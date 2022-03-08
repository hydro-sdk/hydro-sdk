import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/navigation_bar.dart' as _84a5;
import 'package:flutter/src/material/navigation_bar_theme.dart' as _11e0;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigationBarThemeData
    extends _36c2.VMManagedBox<_11e0.NavigationBarThemeData> {
  VMManagedNavigationBarThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['height'] = vmObject.height;
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.indicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelTextStyle'] =
        _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
            object: vmObject.labelTextStyle,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['iconTheme'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelBehavior'] =
        _84a5.NavigationDestinationLabelBehavior.values.indexWhere((x) {
      return x == vmObject.labelBehavior;
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_11e0.NavigationBarThemeData>(
            object: vmObject.copyWith(
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                height: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['height']
                    : null?.toDouble(),
                iconTheme: _36c2.maybeUnBoxAndBuildArgument<
                        _da12.MaterialStateProperty<_05d1.IconThemeData?>?,
                        _05d1.IconThemeData?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null,
                    parentState: hydroState),
                indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null,
                    parentState: hydroState),
                labelBehavior: _36c2.maybeUnBoxEnum(values: _84a5.NavigationDestinationLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelBehavior'] : null),
                labelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelTextStyle'] : null, parentState: hydroState)),
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

  final _11e0.NavigationBarThemeData vmObject;
}

class RTManagedNavigationBarThemeData extends _11e0.NavigationBarThemeData
    implements _36c2.Box<_11e0.NavigationBarThemeData> {
  RTManagedNavigationBarThemeData(
      {_a643.Color? backgroundColor,
      _fac9.double? height,
      _da12.MaterialStateProperty<_05d1.IconThemeData?>? iconTheme,
      _a643.Color? indicatorColor,
      _84a5.NavigationDestinationLabelBehavior? labelBehavior,
      _da12.MaterialStateProperty<_74d0.TextStyle?>? labelTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            height: height,
            iconTheme: iconTheme,
            indicatorColor: indicatorColor,
            labelBehavior: labelBehavior,
            labelTextStyle: labelTextStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['height'] = _36c2.maybeBoxObject(
        object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorColor'] = _36c2.maybeBoxObject(
        object: this.indicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelTextStyle'] = _36c2.maybeBoxObject(
        object: this.labelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconTheme'] = _36c2.maybeBoxObject(
        object: this.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelBehavior'] =
        _84a5.NavigationDestinationLabelBehavior.values.indexWhere((x) {
      return x == this.labelBehavior;
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
                height:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null,
                        parentState: hydroState),
                iconTheme: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_05d1.IconThemeData?>?, _05d1.IconThemeData?>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null,
                    parentState: hydroState),
                indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null, parentState: hydroState),
                labelBehavior: _36c2.maybeUnBoxEnum(values: _84a5.NavigationDestinationLabelBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelBehavior'] : null),
                labelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelTextStyle'] : null, parentState: hydroState)),
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

  _11e0.NavigationBarThemeData unwrap() => this;
  _11e0.NavigationBarThemeData get vmObject => this;
  @_fac9.override
  _11e0.NavigationBarThemeData copyWith(
      {_a643.Color? backgroundColor,
      _fac9.double? height,
      _da12.MaterialStateProperty? iconTheme,
      _a643.Color? indicatorColor,
      _84a5.NavigationDestinationLabelBehavior? labelBehavior,
      _da12.MaterialStateProperty? labelTextStyle}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_11e0.NavigationBarThemeData,
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

void loadNavigationBarThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['navigationBarThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedNavigationBarThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
              parentState: hydroState),
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          iconTheme: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_05d1.IconThemeData?>?, _05d1.IconThemeData?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null,
              parentState: hydroState),
          indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null,
              parentState: hydroState),
          labelBehavior: _36c2.maybeUnBoxEnum(
              values: _84a5.NavigationDestinationLabelBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['labelBehavior']
                  : null),
          labelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelTextStyle'] : null,
              parentState: hydroState))
    ];
  });
  table['navigationBarThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _11e0.NavigationBarThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_11e0.NavigationBarThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_11e0.NavigationBarThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_11e0.NavigationBarThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_11e0.NavigationBarThemeData>(boxer: (
      {required _11e0.NavigationBarThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNavigationBarThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
