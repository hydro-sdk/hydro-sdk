import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/navigation_rail.dart' as _bdb1;
import 'package:flutter/src/material/navigation_rail_theme.dart' as _fcbb;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigationRailThemeData
    extends _36c2.VMManagedBox<_fcbb.NavigationRailThemeData> {
  VMManagedNavigationRailThemeData(
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
    table['unselectedLabelTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.selectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['groupAlignment'] = vmObject.groupAlignment;
    table['labelType'] = _bdb1.NavigationRailLabelType.values.indexWhere((x) {
      return x == vmObject.labelType;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fcbb.NavigationRailThemeData>(
            object: vmObject.copyWith(
                backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                    parentState: hydroState),
                elevation: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['elevation']
                    : null?.toDouble(),
                groupAlignment: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['groupAlignment']
                    : null?.toDouble(),
                labelType: _36c2.maybeUnBoxEnum(
                    values: _bdb1.NavigationRailLabelType.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['labelType']
                        : null),
                selectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null,
                    parentState: hydroState),
                selectedLabelTextStyle:
                    _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelTextStyle'] : null,
                        parentState: hydroState),
                unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
                unselectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelTextStyle'] : null, parentState: hydroState)),
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

  final _fcbb.NavigationRailThemeData vmObject;
}

class RTManagedNavigationRailThemeData extends _fcbb.NavigationRailThemeData
    implements _36c2.Box<_fcbb.NavigationRailThemeData> {
  RTManagedNavigationRailThemeData(
      {_a643.Color? backgroundColor,
      _fac9.double? elevation,
      _fac9.double? groupAlignment,
      _bdb1.NavigationRailLabelType? labelType,
      _05d1.IconThemeData? selectedIconTheme,
      _74d0.TextStyle? selectedLabelTextStyle,
      _05d1.IconThemeData? unselectedIconTheme,
      _74d0.TextStyle? unselectedLabelTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            elevation: elevation,
            groupAlignment: groupAlignment,
            labelType: labelType,
            selectedIconTheme: selectedIconTheme,
            selectedLabelTextStyle: selectedLabelTextStyle,
            unselectedIconTheme: unselectedIconTheme,
            unselectedLabelTextStyle: unselectedLabelTextStyle) {
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
    table['unselectedLabelTextStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelTextStyle'] = _36c2.maybeBoxObject(
        object: this.selectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['groupAlignment'] = _36c2.maybeBoxObject(
        object: this.groupAlignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelType'] = _bdb1.NavigationRailLabelType.values.indexWhere((x) {
      return x == this.labelType;
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['backgroundColor']
                            : null,
                        parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null,
                    parentState: hydroState),
                groupAlignment:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['groupAlignment'] : null,
                        parentState: hydroState),
                labelType: _36c2.maybeUnBoxEnum(values: _bdb1.NavigationRailLabelType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelType'] : null),
                selectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null, parentState: hydroState),
                selectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelTextStyle'] : null, parentState: hydroState),
                unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
                unselectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelTextStyle'] : null, parentState: hydroState)),
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

  _fcbb.NavigationRailThemeData unwrap() => this;
  _fcbb.NavigationRailThemeData get vmObject => this;
  @_fac9.override
  _fcbb.NavigationRailThemeData copyWith(
      {_a643.Color? backgroundColor,
      _fac9.double? elevation,
      _fac9.double? groupAlignment,
      _bdb1.NavigationRailLabelType? labelType,
      _05d1.IconThemeData? selectedIconTheme,
      _74d0.TextStyle? selectedLabelTextStyle,
      _05d1.IconThemeData? unselectedIconTheme,
      _74d0.TextStyle? unselectedLabelTextStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_fcbb.NavigationRailThemeData,
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

void loadNavigationRailThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['navigationRailThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedNavigationRailThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
              parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          groupAlignment: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['groupAlignment']
              : null?.toDouble(),
          labelType: _36c2.maybeUnBoxEnum(
              values: _bdb1.NavigationRailLabelType.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['labelType']
                  : null),
          selectedIconTheme:
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['selectedIconTheme']
                      : null,
                  parentState: hydroState),
          selectedLabelTextStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelTextStyle'] : null,
                  parentState: hydroState),
          unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
          unselectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelTextStyle'] : null, parentState: hydroState))
    ];
  });
  table['navigationRailThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _fcbb.NavigationRailThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_fcbb.NavigationRailThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_fcbb.NavigationRailThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_fcbb.NavigationRailThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_fcbb.NavigationRailThemeData>(boxer: (
      {required _fcbb.NavigationRailThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNavigationRailThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
