import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/list_tile.dart' as _fe2b;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListTileThemeData
    extends _36c2.VMManagedBox<_fe2b.ListTileThemeData> {
  VMManagedListTileThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dense'] = vmObject.dense;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _fe2b.ListTileStyle.values.indexWhere((x) {
      return x == vmObject.style;
    });
    table['selectedColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.textColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tileColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.tileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedTileColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedTileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['horizontalTitleGap'] = vmObject.horizontalTitleGap;
    table['minVerticalPadding'] = vmObject.minVerticalPadding;
    table['minLeadingWidth'] = vmObject.minLeadingWidth;
    table['enableFeedback'] = vmObject.enableFeedback;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fe2b.ListTileThemeData>(
            object: vmObject.copyWith(
                contentPadding: _36c2
                    .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['contentPadding']
                            : null,
                        parentState: hydroState),
                dense: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['dense']
                    : null,
                enableFeedback: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableFeedback']
                    : null,
                horizontalTitleGap: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['horizontalTitleGap']
                    : null?.toDouble(),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null,
                    parentState: hydroState),
                minLeadingWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLeadingWidth'] : null?.toDouble(),
                minVerticalPadding: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minVerticalPadding'] : null?.toDouble(),
                selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
                selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null),
                textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
                tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState)),
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

  final _fe2b.ListTileThemeData vmObject;
}

class RTManagedListTileThemeData extends _fe2b.ListTileThemeData
    implements _36c2.Box<_fe2b.ListTileThemeData> {
  RTManagedListTileThemeData(
      {_96d1.EdgeInsetsGeometry? contentPadding,
      _fac9.bool? dense,
      _fac9.bool? enableFeedback,
      _fac9.double? horizontalTitleGap,
      _a643.Color? iconColor,
      _fac9.double? minLeadingWidth,
      _fac9.double? minVerticalPadding,
      _a643.Color? selectedColor,
      _a643.Color? selectedTileColor,
      _6be9.ShapeBorder? shape,
      _fe2b.ListTileStyle? style,
      _a643.Color? textColor,
      _a643.Color? tileColor,
      required this.table,
      required this.hydroState})
      : super(
            contentPadding: contentPadding,
            dense: dense,
            enableFeedback: enableFeedback,
            horizontalTitleGap: horizontalTitleGap,
            iconColor: iconColor,
            minLeadingWidth: minLeadingWidth,
            minVerticalPadding: minVerticalPadding,
            selectedColor: selectedColor,
            selectedTileColor: selectedTileColor,
            shape: shape,
            style: style,
            textColor: textColor,
            tileColor: tileColor) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['dense'] = _36c2.maybeBoxObject(
        object: this.dense, hydroState: hydroState, table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['style'] = _fe2b.ListTileStyle.values.indexWhere((x) {
      return x == this.style;
    });
    table['selectedColor'] = _36c2.maybeBoxObject(
        object: this.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject(
        object: this.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textColor'] = _36c2.maybeBoxObject(
        object: this.textColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject(
        object: this.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tileColor'] = _36c2.maybeBoxObject(
        object: this.tileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedTileColor'] = _36c2.maybeBoxObject(
        object: this.selectedTileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['horizontalTitleGap'] = _36c2.maybeBoxObject(
        object: this.horizontalTitleGap,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minVerticalPadding'] = _36c2.maybeBoxObject(
        object: this.minVerticalPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minLeadingWidth'] = _36c2.maybeBoxObject(
        object: this.minLeadingWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentPadding'] : null,
                    parentState: hydroState),
                dense: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
                    parentState: hydroState),
                enableFeedback: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['enableFeedback']
                        : null,
                    parentState: hydroState),
                horizontalTitleGap: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['horizontalTitleGap'] : null,
                    parentState: hydroState),
                iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
                minLeadingWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLeadingWidth'] : null, parentState: hydroState),
                minVerticalPadding: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minVerticalPadding'] : null, parentState: hydroState),
                selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
                selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null),
                textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
                tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState)),
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

  _fe2b.ListTileThemeData unwrap() => this;
  _fe2b.ListTileThemeData get vmObject => this;
  @_fac9.override
  _fe2b.ListTileThemeData copyWith(
      {_96d1.EdgeInsetsGeometry? contentPadding,
      _fac9.bool? dense,
      _fac9.bool? enableFeedback,
      _fac9.double? horizontalTitleGap,
      _a643.Color? iconColor,
      _fac9.double? minLeadingWidth,
      _fac9.double? minVerticalPadding,
      _a643.Color? selectedColor,
      _a643.Color? selectedTileColor,
      _6be9.ShapeBorder? shape,
      _fe2b.ListTileStyle? style,
      _a643.Color? textColor,
      _a643.Color? tileColor}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData, _fac9.dynamic>(
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

void loadListTileThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listTileThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedListTileThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          contentPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentPadding'] : null,
                  parentState: hydroState),
          dense: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['dense']
              : null,
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          horizontalTitleGap: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['horizontalTitleGap']
              : null?.toDouble(),
          iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null,
              parentState: hydroState),
          minLeadingWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minLeadingWidth']
              : null?.toDouble(),
          minVerticalPadding: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minVerticalPadding']
              : null?.toDouble(),
          selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null,
              parentState: hydroState),
          selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null,
              parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          style: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null),
          textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
          tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState))
    ];
  });
  table['listTileThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _fe2b.ListTileThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_fe2b.ListTileThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_fe2b.ListTileThemeData>(boxer: (
      {required _fe2b.ListTileThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListTileThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
