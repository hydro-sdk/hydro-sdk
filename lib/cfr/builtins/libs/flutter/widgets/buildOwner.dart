import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/binding.dart' as _8f1c;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBuildOwner extends _36c2.VMManagedBox<_e2dc.BuildOwner> {
  VMManagedBuildOwner(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focusManager'] = _36c2.maybeBoxObject<_b485.FocusManager>(
        object: vmObject.focusManager,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scheduleBuildFor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleBuildFor(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getDebugBuilding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugBuilding,
      ];
    });
    table['lockState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.lockState(() => unpackedcallback.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['buildScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[2];
      vmObject.buildScope(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          unpackedcallback != null
              ? () => unpackedcallback.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['getGlobalKeyCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.globalKeyCount,
      ];
    });
    table['finalizeTree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.finalizeTree();
      return [];
    });
    table['reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reassemble(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_8f1c.DebugReassembleConfig?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _e2dc.BuildOwner vmObject;
}

class RTManagedBuildOwner extends _e2dc.BuildOwner
    implements _36c2.Box<_e2dc.BuildOwner> {
  RTManagedBuildOwner(
      {_b485.FocusManager? focusManager,
      void Function()? onBuildScheduled,
      required this.table,
      required this.hydroState})
      : super(focusManager: focusManager, onBuildScheduled: onBuildScheduled) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focusManager'] = _36c2.maybeBoxObject(
        object: this.focusManager,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_scheduleBuildFor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleBuildFor(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDebugBuilding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugBuilding];
    });
    table['_dart_lockState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.lockState(() => unpackedcallback.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_buildScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[2];
      super.buildScope(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          unpackedcallback != null
              ? () => unpackedcallback.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['_dart_getGlobalKeyCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.globalKeyCount];
    });
    table['_dart_finalizeTree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.finalizeTree();
      return [];
    });
    table['_dart_reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reassemble(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_8f1c.DebugReassembleConfig?,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _e2dc.BuildOwner unwrap() => this;
  _e2dc.BuildOwner get vmObject => this;
  @_fac9.override
  void scheduleBuildFor(element) {
    _36c2.Closure closure = table["scheduleBuildFor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugBuilding {
    _36c2.Closure closure = table["getDebugBuilding"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void lockState(callback) {
    _36c2.Closure closure = table["lockState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void buildScope(context, [void Function()? callback]) {
    _36c2.Closure closure = table["buildScope"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get globalKeyCount {
    _36c2.Closure closure = table["getGlobalKeyCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void finalizeTree() {
    _36c2.Closure closure = table["finalizeTree"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void reassemble(root, reassembleConfig) {
    _36c2.Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBuildOwner(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['buildOwner'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonBuildScheduled = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onBuildScheduled']
        : null;
    return [
      RTManagedBuildOwner(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          focusManager: _36c2
              .maybeUnBoxAndBuildArgument<_b485.FocusManager?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['focusManager']
                      : null,
                  parentState: hydroState),
          onBuildScheduled: unpackedonBuildScheduled != null
              ? () => unpackedonBuildScheduled.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_e2dc.BuildOwner>(boxer: (
      {required _e2dc.BuildOwner vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBuildOwner(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
