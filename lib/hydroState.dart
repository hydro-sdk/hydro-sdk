import 'dart:io';
import 'dart:typed_data';

import 'package:flua/builtins/dart/dart.dart';
import 'package:flua/builtins/flutter/flutter.dart';
import 'package:flua/builtins/stdlib/base.dart';
import 'package:flua/builtins/stdlib/bit.dart';
import 'package:flua/builtins/stdlib/bit32.dart';
import 'package:flua/builtins/stdlib/math.dart';
import 'package:flua/builtins/stdlib/string.dart';
import 'package:flua/builtins/stdlib/table.dart';
import 'package:flua/builtins/ts/ts.dart';
import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/decode/decoder.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/luaerror.dart';
import 'package:flua/vm/hydroFunction.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/vm/upVal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class HydroFunctionImpl extends HydroFunction {
  HydroFunctionImpl(this.closure);
  Closure closure;
  HydroState get state => closure.context.userdata as HydroState;
  List<dynamic> call(List<dynamic> args) => closure(args);
  CoroutineResult pcall(List<dynamic> args, {@required HydroState parentState}) {
    try {
      return new CoroutineResult(true, closure(args, parentState: parentState));
    } on LuaError catch (e) {
      return new CoroutineResult(false, [e.toString()]);
    }
  }

  bool operator ==(dynamic other) =>
      other is HydroFunctionImpl && other.closure == closure;
  int get hashCode => closure.hashCode;
}

class DispatchContext {
  final HydroFunctionImpl dispatchContext;

  final List<List<String>> resssemblyMap;

  DispatchContext(
      {@required this.dispatchContext, @required this.resssemblyMap});
}

class HydroState {
  // ignore: non_constant_identifier_names
  HydroTable get _G => _context.env;
  final Context _context;
  Context get context => _context;

  DispatchContext dispatchContext;

  HydroState({bool loadLibs = true})
      : _context = new Context(env: new HydroTable()) {
    _context.userdata = this;

    if (loadLibs) {
      loadBaseLib(_context);
      loadMathLib(_context);
      loadStringLib(_context);
      loadBitLib(_context);
      loadTableLib(_context);
      loadBit32Lib(_context);
      loadFlutterLib(luaState: this, ctx: _context);
      loadDartLib(_context);
      loadTsLib(_context);
    }
  }

  Future<HydroFunction> loadFileFromBundle(String path) async {
    var contents = await rootBundle.load(path);
    var decoder = Decoder(contents.buffer);
    var dump = decoder.readCodeDump(path);

    return HydroFunctionImpl(Closure(dump.main,
        context: _context, upvalues: [Upval.store(_context.env)]));
  }

  Future<HydroFunction> loadFile(String path) async {
    var f = File(path);

    if (!f.existsSync()) throw "$path not found";
    var fh = f.openSync(mode: FileMode.read);
    var buffer = Uint8List(await f.length());
    fh.readIntoSync(buffer);

    var decoder = Decoder(buffer.buffer);
    var dump = decoder.readCodeDump(path);

    return HydroFunctionImpl(Closure(
      dump.main,
      context: _context,
      upvalues: [Upval.store(_context.env)],
    ));
  }

  Future<HydroFunctionImpl> loadBuffer(Uint8List buffer, String name) async {
    var decoder = Decoder(buffer.buffer);
    var dump = decoder.readCodeDump(name);

    return HydroFunctionImpl(Closure(dump.main,
        context: _context, upvalues: [Upval.store(_context.env)]));
  }

  Future<CoroutineResult> doBuffer(Uint8List buffer, String name) async {
    return (await loadBuffer(buffer, name)).pcall([], parentState: this);
  }

  Future<CoroutineResult> doFile(String path,
          {List<dynamic> args = const []}) async =>
      (await loadFile(path)).pcall(args);

  Future<CoroutineResult> doFileFromBundle(String path,
          {List<dynamic> args = const []}) async =>
      (await loadFileFromBundle(path)).pcall(args);
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
