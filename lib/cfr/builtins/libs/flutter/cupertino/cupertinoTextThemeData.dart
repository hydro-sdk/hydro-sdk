import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/text_theme.dart' as _1bc7;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoTextThemeData
    extends _36c2.VMManagedBox<_1bc7.CupertinoTextThemeData> {
  VMManagedCupertinoTextThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.textStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getActionTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.actionTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTabLabelTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.tabLabelTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getNavTitleTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.navTitleTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getNavLargeTitleTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.navLargeTitleTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getNavActionTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.navActionTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPickerTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.pickerTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDateTimePickerTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_74d0.TextStyle>(
            object: vmObject.dateTimePickerTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['resolveFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1bc7.CupertinoTextThemeData>(
            object: vmObject.resolveFrom(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1bc7.CupertinoTextThemeData>(
            object: vmObject.copyWith(
                actionTextStyle:
                    _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actionTextStyle'] : null,
                        parentState: hydroState),
                dateTimePickerTextStyle:
                    _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dateTimePickerTextStyle']
                            : null,
                        parentState: hydroState),
                navActionTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navActionTextStyle'] : null,
                    parentState: hydroState),
                navLargeTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navLargeTitleTextStyle'] : null, parentState: hydroState),
                navTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navTitleTextStyle'] : null, parentState: hydroState),
                pickerTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pickerTextStyle'] : null, parentState: hydroState),
                primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null, parentState: hydroState),
                tabLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabLabelTextStyle'] : null, parentState: hydroState),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
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

  final _1bc7.CupertinoTextThemeData vmObject;
}

class RTManagedCupertinoTextThemeData extends _1bc7.CupertinoTextThemeData
    implements _36c2.Box<_1bc7.CupertinoTextThemeData> {
  RTManagedCupertinoTextThemeData(
      {_74d0.TextStyle? actionTextStyle,
      _74d0.TextStyle? dateTimePickerTextStyle,
      _74d0.TextStyle? navActionTextStyle,
      _74d0.TextStyle? navLargeTitleTextStyle,
      _74d0.TextStyle? navTitleTextStyle,
      _74d0.TextStyle? pickerTextStyle,
      required _a643.Color primaryColor,
      _74d0.TextStyle? tabLabelTextStyle,
      _74d0.TextStyle? textStyle,
      required this.table,
      required this.hydroState})
      : super(
            actionTextStyle: actionTextStyle,
            dateTimePickerTextStyle: dateTimePickerTextStyle,
            navActionTextStyle: navActionTextStyle,
            navLargeTitleTextStyle: navLargeTitleTextStyle,
            navTitleTextStyle: navTitleTextStyle,
            pickerTextStyle: pickerTextStyle,
            primaryColor: primaryColor,
            tabLabelTextStyle: tabLabelTextStyle,
            textStyle: textStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textStyle];
    });
    table['_dart_getActionTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.actionTextStyle];
    });
    table['_dart_getTabLabelTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.tabLabelTextStyle];
    });
    table['_dart_getNavTitleTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.navTitleTextStyle];
    });
    table['_dart_getNavLargeTitleTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.navLargeTitleTextStyle];
    });
    table['_dart_getNavActionTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.navActionTextStyle];
    });
    table['_dart_getPickerTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pickerTextStyle];
    });
    table['_dart_getDateTimePickerTextStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dateTimePickerTextStyle];
    });
    table['_dart_resolveFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.resolveFrom(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                actionTextStyle:
                    _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actionTextStyle'] : null,
                        parentState: hydroState),
                dateTimePickerTextStyle:
                    _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dateTimePickerTextStyle']
                            : null,
                        parentState: hydroState),
                navActionTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navActionTextStyle'] : null,
                    parentState: hydroState),
                navLargeTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navLargeTitleTextStyle'] : null, parentState: hydroState),
                navTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navTitleTextStyle'] : null, parentState: hydroState),
                pickerTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pickerTextStyle'] : null, parentState: hydroState),
                primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null, parentState: hydroState),
                tabLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabLabelTextStyle'] : null, parentState: hydroState),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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

  _1bc7.CupertinoTextThemeData unwrap() => this;
  _1bc7.CupertinoTextThemeData get vmObject => this;
  @_fac9.override
  _74d0.TextStyle get textStyle {
    _36c2.Closure closure = table["getTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get actionTextStyle {
    _36c2.Closure closure = table["getActionTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get tabLabelTextStyle {
    _36c2.Closure closure = table["getTabLabelTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get navTitleTextStyle {
    _36c2.Closure closure = table["getNavTitleTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get navLargeTitleTextStyle {
    _36c2.Closure closure = table["getNavLargeTitleTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get navActionTextStyle {
    _36c2.Closure closure = table["getNavActionTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get pickerTextStyle {
    _36c2.Closure closure = table["getPickerTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _74d0.TextStyle get dateTimePickerTextStyle {
    _36c2.Closure closure = table["getDateTimePickerTextStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _1bc7.CupertinoTextThemeData resolveFrom(context) {
    _36c2.Closure closure = table["resolveFrom"];
    return _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _1bc7.CupertinoTextThemeData copyWith(
      {_74d0.TextStyle? actionTextStyle,
      _74d0.TextStyle? dateTimePickerTextStyle,
      _74d0.TextStyle? navActionTextStyle,
      _74d0.TextStyle? navLargeTitleTextStyle,
      _74d0.TextStyle? navTitleTextStyle,
      _74d0.TextStyle? pickerTextStyle,
      _a643.Color? primaryColor,
      _74d0.TextStyle? tabLabelTextStyle,
      _74d0.TextStyle? textStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadCupertinoTextThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoTextThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoTextThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actionTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['actionTextStyle']
                  : null,
              parentState: hydroState),
          dateTimePickerTextStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['dateTimePickerTextStyle']
                      : null,
                  parentState: hydroState),
          navActionTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navActionTextStyle'] : null,
              parentState: hydroState),
          navLargeTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navLargeTitleTextStyle'] : null, parentState: hydroState),
          navTitleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navTitleTextStyle'] : null, parentState: hydroState),
          pickerTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pickerTextStyle'] : null, parentState: hydroState),
          primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null, parentState: hydroState),
          tabLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabLabelTextStyle'] : null, parentState: hydroState),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1bc7.CupertinoTextThemeData>(boxer: (
      {required _1bc7.CupertinoTextThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoTextThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
