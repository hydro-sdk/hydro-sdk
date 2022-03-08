import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/bottom_navigation_bar.dart' as _c7f4;
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart' as _f261;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBottomNavigationBarThemeData
    extends _36c2.VMManagedBox<_f261.BottomNavigationBarThemeData> {
  VMManagedBottomNavigationBarThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['selectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedItemColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedItemColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.unselectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.selectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showSelectedLabels'] = vmObject.showSelectedLabels;
    table['showUnselectedLabels'] = vmObject.showUnselectedLabels;
    table['type'] = _c7f4.BottomNavigationBarType.values.indexWhere((x) {
      return x == vmObject.type;
    });
    table['enableFeedback'] = vmObject.enableFeedback;
    table['landscapeLayout'] =
        _c7f4.BottomNavigationBarLandscapeLayout.values.indexWhere((x) {
      return x == vmObject.landscapeLayout;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f261.BottomNavigationBarThemeData>(
            object: vmObject.copyWith(
                backgroundColor: _36c2
                    .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                elevation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['elevation']
                    : null?.toDouble(),
                enableFeedback: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableFeedback']
                    : null,
                landscapeLayout: _36c2.maybeUnBoxEnum(
                    values: _c7f4.BottomNavigationBarLandscapeLayout.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['landscapeLayout']
                        : null),
                selectedIconTheme:
                    _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null,
                        parentState: hydroState),
                selectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedItemColor'] : null, parentState: hydroState),
                selectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelStyle'] : null, parentState: hydroState),
                showSelectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showSelectedLabels'] : null,
                showUnselectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showUnselectedLabels'] : null,
                type: _36c2.maybeUnBoxEnum(values: _c7f4.BottomNavigationBarType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['type'] : null),
                unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
                unselectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedItemColor'] : null, parentState: hydroState),
                unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState)),
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

  final _f261.BottomNavigationBarThemeData vmObject;
}

class RTManagedBottomNavigationBarThemeData
    extends _f261.BottomNavigationBarThemeData
    implements _36c2.Box<_f261.BottomNavigationBarThemeData> {
  RTManagedBottomNavigationBarThemeData(
      {_a643.Color? backgroundColor,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _c7f4.BottomNavigationBarLandscapeLayout? landscapeLayout,
      _05d1.IconThemeData? selectedIconTheme,
      _a643.Color? selectedItemColor,
      _74d0.TextStyle? selectedLabelStyle,
      _fac9.bool? showSelectedLabels,
      _fac9.bool? showUnselectedLabels,
      _c7f4.BottomNavigationBarType? type,
      _05d1.IconThemeData? unselectedIconTheme,
      _a643.Color? unselectedItemColor,
      _74d0.TextStyle? unselectedLabelStyle,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            elevation: elevation,
            enableFeedback: enableFeedback,
            landscapeLayout: landscapeLayout,
            selectedIconTheme: selectedIconTheme,
            selectedItemColor: selectedItemColor,
            selectedLabelStyle: selectedLabelStyle,
            showSelectedLabels: showSelectedLabels,
            showUnselectedLabels: showUnselectedLabels,
            type: type,
            unselectedIconTheme: unselectedIconTheme,
            unselectedItemColor: unselectedItemColor,
            unselectedLabelStyle: unselectedLabelStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedItemColor'] = _36c2.maybeBoxObject(
        object: this.selectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedItemColor'] = _36c2.maybeBoxObject(
        object: this.unselectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.selectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showSelectedLabels'] = _36c2.maybeBoxObject(
        object: this.showSelectedLabels,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showUnselectedLabels'] = _36c2.maybeBoxObject(
        object: this.showUnselectedLabels,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['type'] = _c7f4.BottomNavigationBarType.values.indexWhere((x) {
      return x == this.type;
    });
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['landscapeLayout'] =
        _c7f4.BottomNavigationBarLandscapeLayout.values.indexWhere((x) {
      return x == this.landscapeLayout;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null,
                    parentState: hydroState),
                enableFeedback: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
                    parentState: hydroState),
                landscapeLayout: _36c2.maybeUnBoxEnum(
                    values: _c7f4.BottomNavigationBarLandscapeLayout.values,
                    boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['landscapeLayout'] : null),
                selectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null, parentState: hydroState),
                selectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedItemColor'] : null, parentState: hydroState),
                selectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelStyle'] : null, parentState: hydroState),
                showSelectedLabels: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showSelectedLabels'] : null, parentState: hydroState),
                showUnselectedLabels: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showUnselectedLabels'] : null, parentState: hydroState),
                type: _36c2.maybeUnBoxEnum(values: _c7f4.BottomNavigationBarType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['type'] : null),
                unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
                unselectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedItemColor'] : null, parentState: hydroState),
                unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState)),
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

  _f261.BottomNavigationBarThemeData unwrap() => this;
  _f261.BottomNavigationBarThemeData get vmObject => this;
  @_fac9.override
  _f261.BottomNavigationBarThemeData copyWith(
      {_a643.Color? backgroundColor,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _c7f4.BottomNavigationBarLandscapeLayout? landscapeLayout,
      _05d1.IconThemeData? selectedIconTheme,
      _a643.Color? selectedItemColor,
      _74d0.TextStyle? selectedLabelStyle,
      _fac9.bool? showSelectedLabels,
      _fac9.bool? showUnselectedLabels,
      _c7f4.BottomNavigationBarType? type,
      _05d1.IconThemeData? unselectedIconTheme,
      _a643.Color? unselectedItemColor,
      _74d0.TextStyle? unselectedLabelStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_f261.BottomNavigationBarThemeData,
            _fac9.dynamic>(
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

void loadBottomNavigationBarThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['bottomNavigationBarThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBottomNavigationBarThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                  parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          landscapeLayout: _36c2.maybeUnBoxEnum(
              values: _c7f4.BottomNavigationBarLandscapeLayout.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['landscapeLayout']
                  : null),
          selectedIconTheme:
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['selectedIconTheme']
                      : null,
                  parentState: hydroState),
          selectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedItemColor'] : null,
              parentState: hydroState),
          selectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelStyle'] : null, parentState: hydroState),
          showSelectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showSelectedLabels'] : null,
          showUnselectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showUnselectedLabels'] : null,
          type: _36c2.maybeUnBoxEnum(values: _c7f4.BottomNavigationBarType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['type'] : null),
          unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
          unselectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedItemColor'] : null, parentState: hydroState),
          unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState))
    ];
  });
  table['bottomNavigationBarThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_f261.BottomNavigationBarThemeData>(
          object: _f261.BottomNavigationBarThemeData.lerp(
              _36c2.maybeUnBoxAndBuildArgument<
                      _f261.BottomNavigationBarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<
                      _f261.BottomNavigationBarThemeData?,
                      _fac9.dynamic>(luaCallerArguments[2],
                  parentState: hydroState),
              luaCallerArguments[3]?.toDouble()),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_f261.BottomNavigationBarThemeData>(boxer: (
      {required _f261.BottomNavigationBarThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBottomNavigationBarThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
