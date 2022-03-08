import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/stack_frame.dart' as _0e62;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRepetitiveStackFrameFilter
    extends _36c2.VMManagedBox<_5dcc.RepetitiveStackFrameFilter> {
  VMManagedRepetitiveStackFrameFilter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['frames'] = _36c2.maybeBoxObject<_fac9.List<_5dcc.PartialStackFrame>>(
        object: vmObject.frames,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['replacement'] = vmObject.replacement;
    table['getNumFrames'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.numFrames,
      ];
    });
    table['filter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.filter(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_0e62.StackFrame>,
              _0e62.StackFrame>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String?>,
              _fac9.String?>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _5dcc.RepetitiveStackFrameFilter vmObject;
}

class RTManagedRepetitiveStackFrameFilter
    extends _5dcc.RepetitiveStackFrameFilter
    implements _36c2.Box<_5dcc.RepetitiveStackFrameFilter> {
  RTManagedRepetitiveStackFrameFilter(
      {required _fac9.List<_5dcc.PartialStackFrame> frames,
      required _fac9.String replacement,
      required this.table,
      required this.hydroState})
      : super(frames: frames, replacement: replacement) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['frames'] = _36c2.maybeBoxObject(
        object: this.frames, hydroState: hydroState, table: _36c2.HydroTable());
    table['replacement'] = _36c2.maybeBoxObject(
        object: this.replacement,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getNumFrames'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.numFrames];
    });
    table['_dart_filter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.filter(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_0e62.StackFrame>,
              _0e62.StackFrame>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String?>,
              _fac9.String?>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _5dcc.RepetitiveStackFrameFilter unwrap() => this;
  _5dcc.RepetitiveStackFrameFilter get vmObject => this;
  @_fac9.override
  _fac9.int get numFrames {
    _36c2.Closure closure = table["getNumFrames"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void filter(stackFrames, reasons) {
    _36c2.Closure closure = table["filter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRepetitiveStackFrameFilter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['repetitiveStackFrameFilter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRepetitiveStackFrameFilter(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          frames: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_5dcc.PartialStackFrame>, _5dcc.PartialStackFrame>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['frames']
                  : null,
              parentState: hydroState),
          replacement: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['replacement']
              : null)
    ];
  });
  _36c2.registerBoxer<_5dcc.RepetitiveStackFrameFilter>(boxer: (
      {required _5dcc.RepetitiveStackFrameFilter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRepetitiveStackFrameFilter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
