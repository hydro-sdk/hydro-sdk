import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/custom_paint.dart' as _93cf;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scrollbar.dart' as _1c5f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollbarPainter
    extends _36c2.VMManagedBox<_1c5f.ScrollbarPainter> {
  VMManagedScrollbarPainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['fadeoutOpacityAnimation'] = _36c2.maybeBoxObject<_86ca.Animation>(
        object: vmObject.fadeoutOpacityAnimation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.color,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.color =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTrackColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.trackColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setTrackColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.trackColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTrackBorderColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.trackBorderColor,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setTrackBorderColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.trackBorderColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textDirection;
      if (returnValue != null) {
        return [
          _a643.TextDirection.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textDirection = (_36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.thickness,
      ];
    });
    table['setThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.thickness = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getMainAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.mainAxisMargin,
      ];
    });
    table['setMainAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.mainAxisMargin = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getCrossAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.crossAxisMargin,
      ];
    });
    table['setCrossAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.crossAxisMargin = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.radius;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Radius?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.radius =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.shape;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.shape = (_36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsets>(
            object: vmObject.padding,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.padding =
          (_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getMinLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minLength,
      ];
    });
    table['setMinLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.minLength = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getMinOverscrollLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minOverscrollLength,
      ];
    });
    table['setMinOverscrollLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.minOverscrollLength = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getScrollbarOrientation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.scrollbarOrientation;
      if (returnValue != null) {
        return [
          _1c5f.ScrollbarOrientation.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setScrollbarOrientation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scrollbarOrientation = (_36c2.maybeUnBoxEnum(
          values: _1c5f.ScrollbarOrientation.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.update(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _487f.AxisDirection.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['updateThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateThickness(
          luaCallerArguments[1]?.toDouble(),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Radius, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['getTrackToScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getTrackToScroll(luaCallerArguments[1]?.toDouble()),
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
    table['hitTestInteractive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestInteractive(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _a643.PointerDeviceKind.values,
                boxedEnum: luaCallerArguments[2]),
            forHover: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['forHover']
                : null),
      ];
    });
    table['hitTestOnlyThumbInteractive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTestOnlyThumbInteractive(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _a643.PointerDeviceKind.values,
                boxedEnum: luaCallerArguments[2])),
      ];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['shouldRepaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRepaint(_36c2.maybeUnBoxAndBuildArgument<
            _1c5f.ScrollbarPainter,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['shouldRebuildSemantics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRebuildSemantics(_36c2.maybeUnBoxAndBuildArgument<
            _93cf.CustomPainter,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
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
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1c5f.ScrollbarPainter vmObject;
}

class RTManagedScrollbarPainter extends _1c5f.ScrollbarPainter
    implements _36c2.Box<_1c5f.ScrollbarPainter> {
  RTManagedScrollbarPainter(
      {required _fac9.double crossAxisMargin,
      required _fac9.double mainAxisMargin,
      required _fac9.double minLength,
      _fac9.double? minOverscrollLength,
      required _96d1.EdgeInsets padding,
      _a643.Radius? radius,
      _1c5f.ScrollbarOrientation? scrollbarOrientation,
      _6be9.OutlinedBorder? shape,
      _a643.TextDirection? textDirection,
      required _fac9.double thickness,
      required _a643.Color trackBorderColor,
      required _a643.Color trackColor,
      required _a643.Color color,
      required _86ca.Animation<_fac9.double> fadeoutOpacityAnimation,
      required this.table,
      required this.hydroState})
      : super(
            crossAxisMargin: crossAxisMargin,
            mainAxisMargin: mainAxisMargin,
            minLength: minLength,
            minOverscrollLength: minOverscrollLength,
            padding: padding,
            radius: radius,
            scrollbarOrientation: scrollbarOrientation,
            shape: shape,
            textDirection: textDirection,
            thickness: thickness,
            trackBorderColor: trackBorderColor,
            trackColor: trackColor,
            color: color,
            fadeoutOpacityAnimation: fadeoutOpacityAnimation) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['fadeoutOpacityAnimation'] = _36c2.maybeBoxObject(
        object: this.fadeoutOpacityAnimation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.color];
    });
    table['_dart_setColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.color =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTrackColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.trackColor];
    });
    table['_dart_setTrackColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.trackColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTrackBorderColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.trackBorderColor];
    });
    table['_dart_setTrackBorderColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.trackBorderColor =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_setTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textDirection = (_36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.thickness];
    });
    table['_dart_setThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.thickness =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMainAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mainAxisMargin];
    });
    table['_dart_setMainAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.mainAxisMargin =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getCrossAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.crossAxisMargin];
    });
    table['_dart_setCrossAxisMargin'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.crossAxisMargin =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.radius];
    });
    table['_dart_setRadius'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.radius =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.shape];
    });
    table['_dart_setShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.shape = (_36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.padding];
    });
    table['_dart_setPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.padding =
          (_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMinLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minLength];
    });
    table['_dart_setMinLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.minLength =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMinOverscrollLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minOverscrollLength];
    });
    table['_dart_setMinOverscrollLength'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.minOverscrollLength =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getScrollbarOrientation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.scrollbarOrientation];
    });
    table['_dart_setScrollbarOrientation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scrollbarOrientation = (_36c2.maybeUnBoxEnum(
          values: _1c5f.ScrollbarOrientation.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.update(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _487f.AxisDirection.values,
              boxedEnum: luaCallerArguments[2]));
      return [];
    });
    table['_dart_updateThickness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateThickness(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Radius, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_getTrackToScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getTrackToScroll(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_hitTestInteractive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTestInteractive(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _a643.PointerDeviceKind.values,
                    boxedEnum: luaCallerArguments[2]),
                forHover:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['forHover']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hitTestOnlyThumbInteractive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTestOnlyThumbInteractive(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _a643.PointerDeviceKind.values,
                    boxedEnum: luaCallerArguments[2])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTest(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldRepaint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldRepaint(_36c2.maybeUnBoxAndBuildArgument<
                _1c5f.ScrollbarPainter,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
            [luaCallerArguments[0]],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [luaCallerArguments[0]],
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1c5f.ScrollbarPainter unwrap() => this;
  _1c5f.ScrollbarPainter get vmObject => this;
  @_fac9.override
  _a643.Color get color {
    _36c2.Closure closure = table["getColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set color(value) {
    _36c2.Closure closure = table["setColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get trackColor {
    _36c2.Closure closure = table["getTrackColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set trackColor(value) {
    _36c2.Closure closure = table["setTrackColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Color get trackBorderColor {
    _36c2.Closure closure = table["getTrackBorderColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set trackBorderColor(value) {
    _36c2.Closure closure = table["setTrackBorderColor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.TextDirection? get textDirection {
    _36c2.Closure closure = table["getTextDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void set textDirection(value) {
    _36c2.Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get thickness {
    _36c2.Closure closure = table["getThickness"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set thickness(value) {
    _36c2.Closure closure = table["setThickness"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get mainAxisMargin {
    _36c2.Closure closure = table["getMainAxisMargin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set mainAxisMargin(value) {
    _36c2.Closure closure = table["setMainAxisMargin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get crossAxisMargin {
    _36c2.Closure closure = table["getCrossAxisMargin"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set crossAxisMargin(value) {
    _36c2.Closure closure = table["setCrossAxisMargin"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Radius? get radius {
    _36c2.Closure closure = table["getRadius"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set radius(value) {
    _36c2.Closure closure = table["setRadius"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6be9.OutlinedBorder? get shape {
    _36c2.Closure closure = table["getShape"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set shape(value) {
    _36c2.Closure closure = table["setShape"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _96d1.EdgeInsets get padding {
    _36c2.Closure closure = table["getPadding"];
    return _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set padding(value) {
    _36c2.Closure closure = table["setPadding"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get minLength {
    _36c2.Closure closure = table["getMinLength"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set minLength(value) {
    _36c2.Closure closure = table["setMinLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get minOverscrollLength {
    _36c2.Closure closure = table["getMinOverscrollLength"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set minOverscrollLength(value) {
    _36c2.Closure closure = table["setMinOverscrollLength"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _1c5f.ScrollbarOrientation? get scrollbarOrientation {
    _36c2.Closure closure = table["getScrollbarOrientation"];
    return _36c2.maybeUnBoxEnum(
        values: _1c5f.ScrollbarOrientation.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void set scrollbarOrientation(value) {
    _36c2.Closure closure = table["setScrollbarOrientation"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void update(metrics, axisDirection) {
    _36c2.Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateThickness(nextThickness, nextRadius) {
    _36c2.Closure closure = table["updateThickness"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double getTrackToScroll(thumbOffsetLocal) {
    _36c2.Closure closure = table["getTrackToScroll"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void paint(canvas, size) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTestInteractive(position, kind, {_fac9.bool forHover = false}) {
    _36c2.Closure closure = table["hitTestInteractive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTestOnlyThumbInteractive(position, kind) {
    _36c2.Closure closure = table["hitTestOnlyThumbInteractive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool? hitTest(position) {
    _36c2.Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool shouldRepaint(oldDelegate) {
    _36c2.Closure closure = table["shouldRepaint"];
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
}

void loadScrollbarPainter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scrollbarPainter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScrollbarPainter(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          crossAxisMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisMargin']
              : null?.toDouble(),
          mainAxisMargin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisMargin']
              : null?.toDouble(),
          minLength: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minLength']
              : null?.toDouble(),
          minOverscrollLength: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minOverscrollLength']
              : null?.toDouble(),
          padding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['padding']
                      : null,
                  parentState: hydroState),
          radius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['radius']
                  : null,
              parentState: hydroState),
          scrollbarOrientation: _36c2.maybeUnBoxEnum(
              values: _1c5f.ScrollbarOrientation.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollbarOrientation'] : null),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          thickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null?.toDouble(),
          trackBorderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackBorderColor'] : null, parentState: hydroState),
          trackColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trackColor'] : null, parentState: hydroState),
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
          fadeoutOpacityAnimation: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>, _fac9.double>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fadeoutOpacityAnimation'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1c5f.ScrollbarPainter>(boxer: (
      {required _1c5f.ScrollbarPainter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollbarPainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
