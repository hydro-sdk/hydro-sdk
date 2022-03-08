import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/widget_inspector.dart' as _8c83;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInspectorSelection
    extends _36c2.VMManagedBox<_8c83.InspectorSelection> {
  VMManagedInspectorSelection(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getCandidates'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject.candidates
                .map((x) => _36c2.maybeBoxObject<_9742.RenderObject>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setCandidates'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.candidates = (_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_9742.RenderObject>,
          _9742.RenderObject>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.index,
      ];
    });
    table['setIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.index = (luaCallerArguments[1]);
      return [];
    });
    table['clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.clear();
      return [];
    });
    table['getCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.current;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_9742.RenderObject?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.current =
          (_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getCurrentElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.currentElement;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Element?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setCurrentElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.currentElement =
          (_36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.active,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c83.InspectorSelection vmObject;
}

class RTManagedInspectorSelection extends _8c83.InspectorSelection
    implements _36c2.Box<_8c83.InspectorSelection> {
  RTManagedInspectorSelection({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getCandidates'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.candidates];
    });
    table['_dart_setCandidates'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.candidates = (_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_9742.RenderObject>,
          _9742.RenderObject>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.index];
    });
    table['_dart_setIndex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.index = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_clear'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.clear();
      return [];
    });
    table['_dart_getCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.current];
    });
    table['_dart_setCurrent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.current =
          (_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCurrentElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentElement];
    });
    table['_dart_setCurrentElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.currentElement =
          (_36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.active];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _8c83.InspectorSelection unwrap() => this;
  _8c83.InspectorSelection get vmObject => this;
  @_fac9.override
  _fac9.List<_9742.RenderObject> get candidates {
    _36c2.Closure closure = table["getCandidates"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9742.RenderObject>,
            _9742.RenderObject>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set candidates(value) {
    _36c2.Closure closure = table["setCandidates"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get index {
    _36c2.Closure closure = table["getIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set index(value) {
    _36c2.Closure closure = table["setIndex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void clear() {
    _36c2.Closure closure = table["clear"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _9742.RenderObject? get current {
    _36c2.Closure closure = table["getCurrent"];
    return _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set current(value) {
    _36c2.Closure closure = table["setCurrent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Element? get currentElement {
    _36c2.Closure closure = table["getCurrentElement"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set currentElement(element) {
    _36c2.Closure closure = table["setCurrentElement"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get active {
    _36c2.Closure closure = table["getActive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInspectorSelection(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['inspectorSelection'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedInspectorSelection(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_8c83.InspectorSelection>(boxer: (
      {required _8c83.InspectorSelection vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInspectorSelection(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
