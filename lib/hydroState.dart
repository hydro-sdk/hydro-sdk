import 'dart:io';
import 'dart:typed_data';

import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/decode/decoder.dart';
import 'package:hydro_sdk/cfr/lasm/nativeThunk.dart';
import 'package:hydro_sdk/cfr/linkStatus.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
import 'package:hydro_sdk/cfr/vm/hydroFunction.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';

class HydroFunctionImpl extends HydroFunction {
  HydroFunctionImpl(this.closure);
  Closure closure;
  HydroState? get state => closure.context!.userdata as HydroState?;
  List<dynamic>? call(List<dynamic> args) =>
      closure.dispatch(args, parentState: state!);
  CoroutineResult pcall(List<dynamic> args, {required HydroState parentState}) {
    try {
      return new CoroutineResult(
          true, closure.dispatch(args, parentState: parentState));
    } on HydroError catch (e) {
      return new CoroutineResult(false, [e.toString()]);
    }
  }

  bool operator ==(dynamic other) =>
      other is HydroFunctionImpl && other.closure == closure;
  int get hashCode => closure.hashCode;
}

class DispatchContext {
  final HydroFunctionImpl dispatchContext;

  DispatchContext({required this.dispatchContext});
}

class HydroState {
  // ignore: non_constant_identifier_names
  HydroTable get _G => _context!.env;
  Context? _context;
  Context? get context => _context;

  DispatchContext? dispatchContext;
  List<ModuleDebugInfo>? symbols;

  HydroState() {
    _context = new Context(env: new HydroTable(), hydroState: this);
    _context!.userdata = this;
  }

  Future<HydroFunctionImpl> loadFile(String path) async {
    var f = File(path);

    if (!f.existsSync()) throw "$path not found";
    var fh = f.openSync(mode: FileMode.read);
    var buffer = Uint8List(await f.length());
    fh.readIntoSync(buffer);

    var decoder = Decoder(buffer.buffer);
    var dump = decoder.readCodeDump(
        name: path,
        dump: null,
        hydroState: this,
        linkStatus: null,
        thunks: null)!;

    return HydroFunctionImpl(Closure(
      dump.main,
      context: _context,
      upvalues: [Upval.store(_context!.env)],
    ));
  }

  Future<HydroFunctionImpl> loadBuffer(
      {required Uint8List buffer,
      required String? name,
      required LinkStatus? linkStatus,
      required Map<String, NativeThunk>? thunks}) async {
    var decoder = Decoder(buffer.buffer);
    var dump = decoder.readCodeDump(
        name: name,
        dump: null,
        hydroState: this,
        linkStatus: linkStatus,
        thunks: thunks)!;

    return HydroFunctionImpl(Closure(dump.main,
        context: _context, upvalues: [Upval.store(_context!.env)]));
  }

  Future<CoroutineResult> doBuffer(Uint8List buffer, String name) async {
    return (await loadBuffer(
            buffer: buffer, name: name, linkStatus: null, thunks: null))
        .pcall([], parentState: this);
  }

  Future<CoroutineResult> doFile(String path,
          {List<dynamic> args = const []}) async =>
      (await loadFile(path)).pcall(args, parentState: this);

  static dynamic _sanitize(dynamic x) {
    if (x is! LuaDartFunc && x is Function) {
      throw "Function does not match LuaDartFunc or LuaDebugFunc";
    } else
      return x;
  }

  static dynamic _convert(dynamic x) {
    if (x is Closure) {
      return new HydroFunctionImpl(x);
    } else
      return x;
  }

  dynamic getGlobal(dynamic k) => _convert(_G.rawget(_sanitize(k)));
  void setGlobal(dynamic k, dynamic v) => _G.rawset(_sanitize(k), _sanitize(v));
}
