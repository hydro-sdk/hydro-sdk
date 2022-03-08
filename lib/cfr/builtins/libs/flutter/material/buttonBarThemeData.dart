import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/button_bar_theme.dart' as _ba38;
import 'package:flutter/src/material/button_theme.dart' as _c547;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/flex.dart' as _7374;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedButtonBarThemeData
    extends _36c2.VMManagedBox<_ba38.ButtonBarThemeData> {
  VMManagedButtonBarThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['alignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == vmObject.alignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == vmObject.mainAxisSize;
    });
    table['buttonTextTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == vmObject.buttonTextTheme;
    });
    table['buttonMinWidth'] = vmObject.buttonMinWidth;
    table['buttonHeight'] = vmObject.buttonHeight;
    table['buttonPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonAlignedDropdown'] = vmObject.buttonAlignedDropdown;
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == vmObject.layoutBehavior;
    });
    table['overflowDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == vmObject.overflowDirection;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ba38.ButtonBarThemeData>(
            object: vmObject.copyWith(
                alignment: _36c2.maybeUnBoxEnum(
                    values: _7374.MainAxisAlignment.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['alignment']
                        : null),
                buttonAlignedDropdown: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttonAlignedDropdown']
                    : null,
                buttonHeight: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttonHeight']
                    : null?.toDouble(),
                buttonMinWidth: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['buttonMinWidth']
                    : null?.toDouble(),
                buttonPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['buttonPadding']
                        : null,
                    parentState: hydroState),
                buttonTextTheme: _36c2.maybeUnBoxEnum(
                    values: _c547.ButtonTextTheme.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['buttonTextTheme']
                        : null),
                layoutBehavior: _36c2.maybeUnBoxEnum(
                    values: _c547.ButtonBarLayoutBehavior.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
                mainAxisSize: _36c2.maybeUnBoxEnum(values: _7374.MainAxisSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisSize'] : null),
                overflowDirection: _36c2.maybeUnBoxEnum(values: _487f.VerticalDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflowDirection'] : null)),
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

  final _ba38.ButtonBarThemeData vmObject;
}

class RTManagedButtonBarThemeData extends _ba38.ButtonBarThemeData
    implements _36c2.Box<_ba38.ButtonBarThemeData> {
  RTManagedButtonBarThemeData(
      {_7374.MainAxisAlignment? alignment,
      _fac9.bool? buttonAlignedDropdown,
      _fac9.double? buttonHeight,
      _fac9.double? buttonMinWidth,
      _96d1.EdgeInsetsGeometry? buttonPadding,
      _c547.ButtonTextTheme? buttonTextTheme,
      _c547.ButtonBarLayoutBehavior? layoutBehavior,
      _7374.MainAxisSize? mainAxisSize,
      _487f.VerticalDirection? overflowDirection,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            buttonAlignedDropdown: buttonAlignedDropdown,
            buttonHeight: buttonHeight,
            buttonMinWidth: buttonMinWidth,
            buttonPadding: buttonPadding,
            buttonTextTheme: buttonTextTheme,
            layoutBehavior: layoutBehavior,
            mainAxisSize: mainAxisSize,
            overflowDirection: overflowDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['alignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == this.alignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == this.mainAxisSize;
    });
    table['buttonTextTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == this.buttonTextTheme;
    });
    table['buttonMinWidth'] = _36c2.maybeBoxObject(
        object: this.buttonMinWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonHeight'] = _36c2.maybeBoxObject(
        object: this.buttonHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonPadding'] = _36c2.maybeBoxObject(
        object: this.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonAlignedDropdown'] = _36c2.maybeBoxObject(
        object: this.buttonAlignedDropdown,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == this.layoutBehavior;
    });
    table['overflowDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == this.overflowDirection;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                alignment: _36c2.maybeUnBoxEnum(
                    values: _7374.MainAxisAlignment.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['alignment']
                        : null),
                buttonAlignedDropdown:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['buttonAlignedDropdown']
                            : null,
                        parentState: hydroState),
                buttonHeight: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonHeight'] : null,
                        parentState: hydroState),
                buttonMinWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonMinWidth'] : null, parentState: hydroState),
                buttonPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonPadding'] : null, parentState: hydroState),
                buttonTextTheme: _36c2.maybeUnBoxEnum(values: _c547.ButtonTextTheme.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonTextTheme'] : null),
                layoutBehavior: _36c2.maybeUnBoxEnum(values: _c547.ButtonBarLayoutBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
                mainAxisSize: _36c2.maybeUnBoxEnum(values: _7374.MainAxisSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisSize'] : null),
                overflowDirection: _36c2.maybeUnBoxEnum(values: _487f.VerticalDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflowDirection'] : null)),
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

  _ba38.ButtonBarThemeData unwrap() => this;
  _ba38.ButtonBarThemeData get vmObject => this;
  @_fac9.override
  _ba38.ButtonBarThemeData copyWith(
      {_7374.MainAxisAlignment? alignment,
      _fac9.bool? buttonAlignedDropdown,
      _fac9.double? buttonHeight,
      _fac9.double? buttonMinWidth,
      _96d1.EdgeInsetsGeometry? buttonPadding,
      _c547.ButtonTextTheme? buttonTextTheme,
      _c547.ButtonBarLayoutBehavior? layoutBehavior,
      _7374.MainAxisSize? mainAxisSize,
      _487f.VerticalDirection? overflowDirection}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ba38.ButtonBarThemeData, _fac9.dynamic>(
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

void loadButtonBarThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['buttonBarThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedButtonBarThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisAlignment.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['alignment']
                  : null),
          buttonAlignedDropdown: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonAlignedDropdown']
              : null,
          buttonHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonHeight']
              : null?.toDouble(),
          buttonMinWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonMinWidth']
              : null?.toDouble(),
          buttonPadding: _36c2
              .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonPadding'] : null,
                  parentState: hydroState),
          buttonTextTheme: _36c2.maybeUnBoxEnum(
              values: _c547.ButtonTextTheme.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['buttonTextTheme']
                  : null),
          layoutBehavior: _36c2.maybeUnBoxEnum(
              values: _c547.ButtonBarLayoutBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['layoutBehavior']
                  : null),
          mainAxisSize: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisSize.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['mainAxisSize']
                  : null),
          overflowDirection: _36c2.maybeUnBoxEnum(
              values: _487f.VerticalDirection.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflowDirection'] : null))
    ];
  });
  table['buttonBarThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _ba38.ButtonBarThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_ba38.ButtonBarThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_ba38.ButtonBarThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_ba38.ButtonBarThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_ba38.ButtonBarThemeData>(boxer: (
      {required _ba38.ButtonBarThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedButtonBarThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
