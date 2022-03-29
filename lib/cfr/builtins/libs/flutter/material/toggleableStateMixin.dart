import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/animation/animation_controller.dart' as _c169;
import 'package:flutter/src/animation/animations.dart' as _77a7;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/toggleable.dart' as _3d55;
import 'package:flutter/src/rendering/custom_paint.dart' as _93cf;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedToggleableStateMixin extends _36c2
    .VMManagedBox<_3d55.ToggleableStateMixin<_e2dc.StatefulWidget>> {
  VMManagedToggleableStateMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPositionController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_c169.AnimationController>(
            object: vmObject.positionController,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_77a7.CurvedAnimation>(
            object: vmObject.position,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReactionController'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_c169.AnimationController>(
            object: vmObject.reactionController,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.reaction,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReactionHoverFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.reactionHoverFade,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getReactionFocusFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.reactionFocusFade,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getIsInteractive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isInteractive,
      ];
    });
    table['getOnChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.onChanged;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.value;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getTristate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.tristate,
      ];
    });
    table['initState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initState();
      return [];
    });
    table['animateToValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.animateToValue();
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getDownPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.downPosition;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Offset?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getStates'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Set>(
            object: vmObject.states,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildToggleable'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildToggleable(
                autofocus: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['autofocus']
                    : null,
                focusNode:
                    _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null,
                        parentState: hydroState),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_fd33.MouseCursor>,
                        _fd33.MouseCursor>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null,
                    parentState: hydroState),
                painter: _36c2.maybeUnBoxAndBuildArgument<_93cf.CustomPainter, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['painter'] : null,
                    parentState: hydroState),
                size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3d55.ToggleableStateMixin<_e2dc.StatefulWidget> vmObject;
}

void loadToggleableStateMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_3d55.ToggleableStateMixin>(boxer: (
      {required _3d55.ToggleableStateMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedToggleableStateMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
