import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/material/toggleable.dart' as _3d55;
import 'package:flutter/src/rendering/custom_paint.dart' as _93cf;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedToggleablePainter
    extends _36c2.VMManagedBox<_3d55.ToggleablePainter> {
  VMManagedToggleablePainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.position,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.position = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
    table['setReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reaction = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
    table['setReactionFocusFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reactionFocusFade = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
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
    table['setReactionHoverFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reactionHoverFade = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getActiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.activeColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setActiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.activeColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getInactiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.inactiveColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setInactiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.inactiveColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getInactiveReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.inactiveReactionColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setInactiveReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.inactiveReactionColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.reactionColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.reactionColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.hoverColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hoverColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.focusColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.focusColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getSplashRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.splashRadius,
      ];
    });
    table['setSplashRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.splashRadius = (luaCallerArguments[1]?.toDouble());
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
    table['setDownPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.downPosition =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getIsFocused'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isFocused,
      ];
    });
    table['setIsFocused'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.isFocused = (luaCallerArguments[1]);
      return [];
    });
    table['getIsHovered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isHovered,
      ];
    });
    table['setIsHovered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.isHovered = (luaCallerArguments[1]);
      return [];
    });
    table['paintRadialReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paintRadialReaction(
          offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          canvas: _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['canvas']
                  : null,
              parentState: hydroState),
          origin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['origin']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['shouldRepaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(_36c2.maybeUnBoxAndBuildArgument<
            _93cf.CustomPainter,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getSemanticsBuilder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.semanticsBuilder;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['shouldRebuildSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRebuildSemantics(_36c2.maybeUnBoxAndBuildArgument<
            _93cf.CustomPainter,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
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
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _3d55.ToggleablePainter vmObject;
}

class RTManagedToggleablePainter extends _3d55.ToggleablePainter
    implements _36c2.Box<_3d55.ToggleablePainter> {
  RTManagedToggleablePainter({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.position];
    });
    table['_dart_setPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.position = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reaction];
    });
    table['_dart_setReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reaction = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getReactionFocusFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reactionFocusFade];
    });
    table['_dart_setReactionFocusFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reactionFocusFade = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getReactionHoverFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reactionHoverFade];
    });
    table['_dart_setReactionHoverFade'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reactionHoverFade = (_36c2.maybeUnBoxAndBuildArgument<
          _86ca.Animation<_fac9.double>,
          _fac9.double>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getActiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.activeColor];
    });
    table['_dart_setActiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.activeColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getInactiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inactiveColor];
    });
    table['_dart_setInactiveColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.inactiveColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getInactiveReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inactiveReactionColor];
    });
    table['_dart_setInactiveReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.inactiveReactionColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.reactionColor];
    });
    table['_dart_setReactionColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reactionColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hoverColor];
    });
    table['_dart_setHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hoverColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.focusColor];
    });
    table['_dart_setFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.focusColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getSplashRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.splashRadius];
    });
    table['_dart_setSplashRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.splashRadius =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getDownPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.downPosition];
    });
    table['_dart_setDownPosition'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.downPosition =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIsFocused'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isFocused];
    });
    table['_dart_setIsFocused'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.isFocused =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getIsHovered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isHovered];
    });
    table['_dart_setIsHovered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.isHovered =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_paintRadialReaction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paintRadialReaction(
          offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['offset']
                  : null,
              parentState: hydroState),
          canvas: _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['canvas']
                  : null,
              parentState: hydroState),
          origin: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['origin'] : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_shouldRepaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldRepaint(_36c2.maybeUnBoxAndBuildArgument<
                _93cf.CustomPainter,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTest(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldRebuildSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldRebuildSemantics(_36c2
                .maybeUnBoxAndBuildArgument<_93cf.CustomPainter, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getHasListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasListeners];
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
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _3d55.ToggleablePainter unwrap() => this;
  _3d55.ToggleablePainter get vmObject => this;
  @_fac9.override
  _86ca.Animation<_fac9.double> get position {
    _36c2.Closure closure = table["getPosition"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set position(value) {
    _36c2.Closure closure = table["setPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> get reaction {
    _36c2.Closure closure = table["getReaction"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set reaction(value) {
    _36c2.Closure closure = table["setReaction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> get reactionFocusFade {
    _36c2.Closure closure = table["getReactionFocusFade"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set reactionFocusFade(value) {
    _36c2.Closure closure = table["setReactionFocusFade"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> get reactionHoverFade {
    _36c2.Closure closure = table["getReactionHoverFade"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set reactionHoverFade(value) {
    _36c2.Closure closure = table["setReactionHoverFade"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get activeColor {
    _36c2.Closure closure = table["getActiveColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set activeColor(value) {
    _36c2.Closure closure = table["setActiveColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get inactiveColor {
    _36c2.Closure closure = table["getInactiveColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set inactiveColor(value) {
    _36c2.Closure closure = table["setInactiveColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get inactiveReactionColor {
    _36c2.Closure closure = table["getInactiveReactionColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set inactiveReactionColor(value) {
    _36c2.Closure closure = table["setInactiveReactionColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get reactionColor {
    _36c2.Closure closure = table["getReactionColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set reactionColor(value) {
    _36c2.Closure closure = table["setReactionColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get hoverColor {
    _36c2.Closure closure = table["getHoverColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set hoverColor(value) {
    _36c2.Closure closure = table["setHoverColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get focusColor {
    _36c2.Closure closure = table["getFocusColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set focusColor(value) {
    _36c2.Closure closure = table["setFocusColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get splashRadius {
    _36c2.Closure closure = table["getSplashRadius"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set splashRadius(value) {
    _36c2.Closure closure = table["setSplashRadius"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset? get downPosition {
    _36c2.Closure closure = table["getDownPosition"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set downPosition(value) {
    _36c2.Closure closure = table["setDownPosition"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isFocused {
    _36c2.Closure closure = table["getIsFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set isFocused(value) {
    _36c2.Closure closure = table["setIsFocused"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get isHovered {
    _36c2.Closure closure = table["getIsHovered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set isHovered(value) {
    _36c2.Closure closure = table["setIsHovered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paintRadialReaction(
      {_a643.Offset offset = _a643.Offset.zero,
      required _a643.Canvas canvas,
      required _a643.Offset origin}) {
    _36c2.Closure closure = table["paintRadialReaction"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool shouldRepaint(oldDelegate) {
    _36c2.Closure closure = table["shouldRepaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool? hitTest(position) {
    _36c2.Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool shouldRebuildSemantics(oldDelegate) {
    _36c2.Closure closure = table["shouldRebuildSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasListeners {
    _36c2.Closure closure = table["getHasListeners"];
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

  @_fac9.override
  void paint(canvas, size) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadToggleablePainter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['toggleablePainter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedToggleablePainter(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_3d55.ToggleablePainter>(boxer: (
      {required _3d55.ToggleablePainter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedToggleablePainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
