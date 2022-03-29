import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedContainerRenderObjectMixin extends _36c2.VMManagedBox<
    _9742.ContainerRenderObjectMixin<_9742.RenderObject,
        _9742.ContainerParentDataMixin<_9742.RenderObject>>> {
  VMManagedContainerRenderObjectMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['debugValidateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugValidateChild(
            _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['insert'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.insert(luaCallerArguments[1],
          after: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['after']
              : null);
      return [];
    });
    table['add'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.add(luaCallerArguments[1]);
      return [];
    });
    table['addAll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addAll(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_9742.RenderObject>?,
          _9742.RenderObject>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['remove'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.remove(luaCallerArguments[1]);
      return [];
    });
    table['removeAll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeAll();
      return [];
    });
    table['move'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.move(luaCallerArguments[1],
          after: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['after']
              : null);
      return [];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attach(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((child) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], child],
            parentState: hydroState,
          ));
      return [];
    });
    table['getFirstChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.firstChild;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getLastChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lastChild;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['childBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.childBefore(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['childAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.childAfter(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9742.ContainerRenderObjectMixin<_9742.RenderObject,
      _9742.ContainerParentDataMixin<_9742.RenderObject>> vmObject;
}

void loadContainerRenderObjectMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_9742.ContainerRenderObjectMixin>(boxer: (
      {required _9742.ContainerRenderObjectMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedContainerRenderObjectMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
