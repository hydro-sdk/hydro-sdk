import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/button_theme.dart' as _c547;
import 'package:flutter/src/material/color_scheme.dart' as _63b9;
import 'package:flutter/src/material/material_button.dart' as _1e7a;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedButtonThemeData
    extends _36c2.VMManagedBox<_c547.ButtonThemeData> {
  VMManagedButtonThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['minWidth'] = vmObject.minWidth;
    table['height'] = vmObject.height;
    table['textTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == vmObject.textTheme;
    });
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == vmObject.layoutBehavior;
    });
    table['alignedDropdown'] = vmObject.alignedDropdown;
    table['colorScheme'] = _36c2.maybeBoxObject<_63b9.ColorScheme?>(
        object: vmObject.colorScheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_be2e.BoxConstraints>(
            object: vmObject.constraints,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.padding,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.ShapeBorder>(
            object: vmObject.shape,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getBrightness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.Brightness.values.indexWhere((x) {
          return x ==
              vmObject.getBrightness(_36c2.maybeUnBoxAndBuildArgument<
                      _1e7a.MaterialButton,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        }),
      ];
    });
    table['getTextTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _c547.ButtonTextTheme.values.indexWhere((x) {
          return x ==
              vmObject.getTextTheme(_36c2.maybeUnBoxAndBuildArgument<
                      _1e7a.MaterialButton,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        }),
      ];
    });
    table['getDisabledTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getDisabledTextColor(
                _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDisabledFillColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getDisabledFillColor(
                _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFillColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getFillColor(
          _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getTextColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getSplashColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getSplashColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getFocusColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getHoverColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHighlightColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Color>(
            object: vmObject.getHighlightColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getElevation(_36c2.maybeUnBoxAndBuildArgument<
            _1e7a.MaterialButton,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getFocusElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getFocusElevation(_36c2.maybeUnBoxAndBuildArgument<
            _1e7a.MaterialButton,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getHoverElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getHoverElevation(_36c2.maybeUnBoxAndBuildArgument<
            _1e7a.MaterialButton,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getHighlightElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getHighlightElevation(_36c2.maybeUnBoxAndBuildArgument<
            _1e7a.MaterialButton,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getDisabledElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getDisabledElevation(_36c2.maybeUnBoxAndBuildArgument<
            _1e7a.MaterialButton,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
            object: vmObject.getPadding(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6be9.ShapeBorder>(
            object: vmObject.getShape(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAnimationDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.getAnimationDuration(
                _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_be2e.BoxConstraints>(
            object: vmObject.getConstraints(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMaterialTapTargetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
          return x ==
              vmObject.getMaterialTapTargetSize(
                  _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton,
                          _fac9.dynamic>(luaCallerArguments[1],
                      parentState: hydroState));
        }),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_c547.ButtonThemeData>(
            object: vmObject.copyWith(
                alignedDropdown: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['alignedDropdown']
                    : null,
                buttonColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonColor'] : null,
                    parentState: hydroState),
                colorScheme:
                    _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['colorScheme']
                            : null,
                        parentState: hydroState),
                disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null,
                    parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
                highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                layoutBehavior: _36c2.maybeUnBoxEnum(values: _c547.ButtonBarLayoutBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
                materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
                minWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minWidth'] : null?.toDouble(),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxEnum(values: _c547.ButtonTextTheme.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _c547.ButtonThemeData vmObject;
}

class RTManagedButtonThemeData extends _c547.ButtonThemeData
    implements _36c2.Box<_c547.ButtonThemeData> {
  RTManagedButtonThemeData(
      {required _fac9.bool alignedDropdown,
      _a643.Color? buttonColor,
      _63b9.ColorScheme? colorScheme,
      _a643.Color? disabledColor,
      _a643.Color? focusColor,
      required _fac9.double height,
      _a643.Color? highlightColor,
      _a643.Color? hoverColor,
      required _c547.ButtonBarLayoutBehavior layoutBehavior,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      required _fac9.double minWidth,
      _96d1.EdgeInsetsGeometry? padding,
      _6be9.ShapeBorder? shape,
      _a643.Color? splashColor,
      required _c547.ButtonTextTheme textTheme,
      required this.table,
      required this.hydroState})
      : super(
            alignedDropdown: alignedDropdown,
            buttonColor: buttonColor,
            colorScheme: colorScheme,
            disabledColor: disabledColor,
            focusColor: focusColor,
            height: height,
            highlightColor: highlightColor,
            hoverColor: hoverColor,
            layoutBehavior: layoutBehavior,
            materialTapTargetSize: materialTapTargetSize,
            minWidth: minWidth,
            padding: padding,
            shape: shape,
            splashColor: splashColor,
            textTheme: textTheme) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['minWidth'] = _36c2.maybeBoxObject(
        object: this.minWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['height'] = _36c2.maybeBoxObject(
        object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
    table['textTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == this.textTheme;
    });
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == this.layoutBehavior;
    });
    table['alignedDropdown'] = _36c2.maybeBoxObject(
        object: this.alignedDropdown,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['colorScheme'] = _36c2.maybeBoxObject(
        object: this.colorScheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.constraints];
    });
    table['_dart_getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.padding];
    });
    table['_dart_getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.shape];
    });
    table['_dart_getBrightness'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.Brightness.values.indexWhere((x) {
          return x ==
              super.getBrightness(_36c2.maybeUnBoxAndBuildArgument<
                      _1e7a.MaterialButton,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        })
      ];
    });
    table['_dart_getTextTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _c547.ButtonTextTheme.values.indexWhere((x) {
          return x ==
              super.getTextTheme(_36c2.maybeUnBoxAndBuildArgument<
                      _1e7a.MaterialButton,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        })
      ];
    });
    table['_dart_getDisabledTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getDisabledTextColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDisabledFillColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getDisabledFillColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getFillColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getFillColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getTextColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getSplashColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getSplashColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getFocusColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getFocusColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHoverColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getHoverColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHighlightColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getHighlightColor(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getElevation(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getFocusElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getFocusElevation(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHoverElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getHoverElevation(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHighlightElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getHighlightElevation(
                _36c2.maybeUnBoxAndBuildArgument<_1e7a.MaterialButton,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDisabledElevation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getDisabledElevation(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPadding(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getShape(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAnimationDuration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getAnimationDuration(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getConstraints(_36c2.maybeUnBoxAndBuildArgument<
                _1e7a.MaterialButton,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getMaterialTapTargetSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
          return x ==
              super.getMaterialTapTargetSize(_36c2.maybeUnBoxAndBuildArgument<
                      _1e7a.MaterialButton,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        })
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                alignedDropdown:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['alignedDropdown']
                            : null,
                        parentState: hydroState),
                buttonColor: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonColor'] : null,
                        parentState: hydroState),
                colorScheme: _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['colorScheme'] : null,
                    parentState: hydroState),
                disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
                focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
                height: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null, parentState: hydroState),
                highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
                hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
                layoutBehavior: _36c2.maybeUnBoxEnum(values: _c547.ButtonBarLayoutBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
                materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
                minWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minWidth'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
                textTheme: _36c2.maybeUnBoxEnum(values: _c547.ButtonTextTheme.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _c547.ButtonThemeData unwrap() => this;
  _c547.ButtonThemeData get vmObject => this;
  @_fac9.override
  _be2e.BoxConstraints get constraints {
    _36c2.Closure closure = table["getConstraints"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry get padding {
    _36c2.Closure closure = table["getPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _6be9.ShapeBorder get shape {
    _36c2.Closure closure = table["getShape"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Brightness getBrightness(button) {
    _36c2.Closure closure = table["getBrightness"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.Brightness.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _c547.ButtonTextTheme getTextTheme(button) {
    _36c2.Closure closure = table["getTextTheme"];
    return _36c2.maybeUnBoxEnum(
        values: _c547.ButtonTextTheme.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _a643.Color getDisabledTextColor(button) {
    _36c2.Closure closure = table["getDisabledTextColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getDisabledFillColor(button) {
    _36c2.Closure closure = table["getDisabledFillColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? getFillColor(button) {
    _36c2.Closure closure = table["getFillColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getTextColor(button) {
    _36c2.Closure closure = table["getTextColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getSplashColor(button) {
    _36c2.Closure closure = table["getSplashColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getFocusColor(button) {
    _36c2.Closure closure = table["getFocusColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getHoverColor(button) {
    _36c2.Closure closure = table["getHoverColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color getHighlightColor(button) {
    _36c2.Closure closure = table["getHighlightColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double getElevation(button) {
    _36c2.Closure closure = table["getElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double getFocusElevation(button) {
    _36c2.Closure closure = table["getFocusElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double getHoverElevation(button) {
    _36c2.Closure closure = table["getHoverElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double getHighlightElevation(button) {
    _36c2.Closure closure = table["getHighlightElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double getDisabledElevation(button) {
    _36c2.Closure closure = table["getDisabledElevation"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry getPadding(button) {
    _36c2.Closure closure = table["getPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _6be9.ShapeBorder getShape(button) {
    _36c2.Closure closure = table["getShape"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Duration getAnimationDuration(button) {
    _36c2.Closure closure = table["getAnimationDuration"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _be2e.BoxConstraints getConstraints(button) {
    _36c2.Closure closure = table["getConstraints"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9716.MaterialTapTargetSize getMaterialTapTargetSize(button) {
    _36c2.Closure closure = table["getMaterialTapTargetSize"];
    return _36c2.maybeUnBoxEnum(
        values: _9716.MaterialTapTargetSize.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _c547.ButtonThemeData copyWith(
      {_fac9.bool? alignedDropdown,
      _a643.Color? buttonColor,
      _63b9.ColorScheme? colorScheme,
      _a643.Color? disabledColor,
      _a643.Color? focusColor,
      _fac9.double? height,
      _a643.Color? highlightColor,
      _a643.Color? hoverColor,
      _c547.ButtonBarLayoutBehavior? layoutBehavior,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      _fac9.double? minWidth,
      _96d1.EdgeInsetsGeometry? padding,
      _6be9.ShapeBorder? shape,
      _a643.Color? splashColor,
      _c547.ButtonTextTheme? textTheme}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_c547.ButtonThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}

void loadButtonThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['buttonThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedButtonThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignedDropdown: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['alignedDropdown']
              : null,
          buttonColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonColor'] : null,
              parentState: hydroState),
          colorScheme: _36c2.maybeUnBoxAndBuildArgument<_63b9.ColorScheme?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['colorScheme']
                  : null,
              parentState: hydroState),
          disabledColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null,
                  parentState: hydroState),
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null,
              parentState: hydroState),
          height: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null?.toDouble(),
          highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          layoutBehavior: _36c2.maybeUnBoxEnum(values: _c547.ButtonBarLayoutBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
          materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
          minWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minWidth'] : null?.toDouble(),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
          textTheme: _36c2.maybeUnBoxEnum(values: _c547.ButtonTextTheme.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null))
    ];
  });
  _36c2.registerBoxer<_c547.ButtonThemeData>(boxer: (
      {required _c547.ButtonThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedButtonThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
