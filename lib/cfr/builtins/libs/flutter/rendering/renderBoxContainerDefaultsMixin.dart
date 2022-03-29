import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderBoxContainerDefaultsMixin extends _36c2.VMManagedBox<
    _be2e.RenderBoxContainerDefaultsMixin<_be2e.RenderBox,
        _be2e.ContainerBoxParentData<_be2e.RenderBox>>> {
  VMManagedRenderBoxContainerDefaultsMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['defaultComputeDistanceToFirstActualBaseline'] = _36c2
        .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.defaultComputeDistanceToFirstActualBaseline(
          _36c2.maybeUnBoxEnum(
              values: _a643.TextBaseline.values,
              boxedEnum: luaCallerArguments[1]));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['defaultComputeDistanceToHighestActualBaseline'] = _36c2
        .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject
          .defaultComputeDistanceToHighestActualBaseline(_36c2.maybeUnBoxEnum(
              values: _a643.TextBaseline.values,
              boxedEnum: luaCallerArguments[1]));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['defaultHitTestChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.defaultHitTestChildren(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['position']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['defaultPaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.defaultPaint(
          _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getChildrenAsList'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .getChildrenAsList()
                .map((x) => _36c2.maybeBoxObject<_be2e.RenderBox>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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
          _fac9.List<_be2e.RenderBox>?,
          _be2e.RenderBox>(luaCallerArguments[1], parentState: hydroState));
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
    table['getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _be2e.RenderBoxContainerDefaultsMixin<_be2e.RenderBox,
      _be2e.ContainerBoxParentData<_be2e.RenderBox>> vmObject;
}

void loadRenderBoxContainerDefaultsMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_be2e.RenderBoxContainerDefaultsMixin>(boxer: (
      {required _be2e.RenderBoxContainerDefaultsMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderBoxContainerDefaultsMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
