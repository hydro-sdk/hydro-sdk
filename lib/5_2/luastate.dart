import 'dart:io';
import 'dart:typed_data';

import 'package:flua/5_2/closure.dart';
import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/coroutineresult.dart';
import 'package:flua/5_2/dart/dart.dart';
import 'package:flua/5_2/flutter/flutter.dart';
import 'package:flua/5_2/luafunction.dart';
import 'package:flua/5_2/stdlib/base.dart';
import 'package:flua/5_2/stdlib/bit.dart';
import 'package:flua/5_2/stdlib/bit32.dart';
import 'package:flua/5_2/stdlib/math.dart';
import 'package:flua/5_2/stdlib/string.dart';
import 'package:flua/5_2/stdlib/table.dart';
import 'package:flua/5_2/table.dart';
import 'package:flua/5_2/upVal.dart';
import 'package:flua/5_2/luaerror.dart';
import 'package:flua/decoder.dart';
import 'package:flutter/services.dart';

class _LuaFunctionImpl extends LuaFunction {
  _LuaFunctionImpl(this.closure);
  Closure closure;
  LuaState get state => closure.context.userdata as LuaState;
  List<dynamic> call(List<dynamic> args) => closure(args);
  CoroutineResult pcall(List<dynamic> args) {
    try {
      return new CoroutineResult(true, closure(args));
    } on LuaError catch (e) {
      return new CoroutineResult(false, [e.toString()]);
    }
  }

  bool operator ==(dynamic other) =>
      other is _LuaFunctionImpl && other.closure == closure;
  int get hashCode => closure.hashCode;
}

class LuaState {
  // ignore: non_constant_identifier_names
  Table get _G => _context.env;
  final Context _context;
  Context get context => _context;

  LuaState({bool loadLibs = true}) : _context = new Context(env: new Table()) {
    _context.userdata = this;

    if (loadLibs) {
      loadBase();
      loadMath();
      loadString();
      loadBit();
      loadTable();
      loadBit32();
      loadFlutter();
      loadDart();
    }
  }

  void loadBase() => loadBaseLib(_context);
  void loadMath() => loadMathLib(_context);
  void loadString() => loadStringLib(_context);
  void loadBit() => loadBitLib(_context);
  void loadTable() => loadTableLib(_context);
  void loadBit32() => loadBit32Lib(_context);
  void loadFlutter() => loadFlutterLib(_context);
  void loadDart() => loadDartLib(_context);

  Future<LuaFunction> loadFileFromBundle(String path) async {
    var contents = await rootBundle.load(path);
    var decoder = Decoder(contents.buffer);
    var dump = decoder.readCodeDump(path);

    return _LuaFunctionImpl(Closure(dump.main,
        context: _context, upvalues: [Upval.store(_context.env)]));
  }

  Future<LuaFunction> loadFile(String path) async {
    var f = File(path);

    if (!f.existsSync()) throw "$path not found";
    var fh = f.openSync(mode: FileMode.read);
    var buffer = Uint8List(await f.length());
    fh.readIntoSync(buffer);

    var decoder = Decoder(buffer.buffer);
    var dump = decoder.readCodeDump(path);

    return _LuaFunctionImpl(Closure(
      dump.main,
      context: _context,
      upvalues: [Upval.store(_context.env)],
    ));
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
      return new _LuaFunctionImpl(x);
    } else
      return x;
  }

  dynamic getGlobal(dynamic k) => _convert(_G.rawget(_sanitize(k)));
  void setGlobal(dynamic k, dynamic v) => _G.rawset(_sanitize(k), _sanitize(v));
}
