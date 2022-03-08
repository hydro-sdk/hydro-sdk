import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/tooltip_theme.dart' as _f870;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTooltipThemeData
    extends _36c2.VMManagedBox<_f870.TooltipThemeData> {
  VMManagedTooltipThemeData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['height'] = vmObject.height;
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['margin'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.margin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['verticalOffset'] = vmObject.verticalOffset;
    table['preferBelow'] = vmObject.preferBelow;
    table['excludeFromSemantics'] = vmObject.excludeFromSemantics;
    table['decoration'] = _36c2.maybeBoxObject<_13a5.Decoration?>(
        object: vmObject.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['waitDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.waitDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.showDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['triggerMode'] = _f870.TooltipTriggerMode.values.indexWhere((x) {
      return x == vmObject.triggerMode;
    });
    table['enableFeedback'] = vmObject.enableFeedback;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_f870.TooltipThemeData>(
            object: vmObject.copyWith(
                decoration: _36c2
                    .maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['decoration']
                            : null,
                        parentState: hydroState),
                enableFeedback: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['enableFeedback']
                    : null,
                excludeFromSemantics: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['excludeFromSemantics']
                    : null,
                height: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['height']
                    : null?.toDouble(),
                margin: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['margin'] : null,
                    parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                preferBelow: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['preferBelow'] : null,
                showDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showDuration'] : null, parentState: hydroState),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
                triggerMode: _36c2.maybeUnBoxEnum(values: _f870.TooltipTriggerMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['triggerMode'] : null),
                verticalOffset: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalOffset'] : null?.toDouble(),
                waitDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['waitDuration'] : null, parentState: hydroState)),
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

  final _f870.TooltipThemeData vmObject;
}

class RTManagedTooltipThemeData extends _f870.TooltipThemeData
    implements _36c2.Box<_f870.TooltipThemeData> {
  RTManagedTooltipThemeData(
      {_13a5.Decoration? decoration,
      _fac9.bool? enableFeedback,
      _fac9.bool? excludeFromSemantics,
      _fac9.double? height,
      _96d1.EdgeInsetsGeometry? margin,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.bool? preferBelow,
      _fac9.Duration? showDuration,
      _74d0.TextStyle? textStyle,
      _f870.TooltipTriggerMode? triggerMode,
      _fac9.double? verticalOffset,
      _fac9.Duration? waitDuration,
      required this.table,
      required this.hydroState})
      : super(
            decoration: decoration,
            enableFeedback: enableFeedback,
            excludeFromSemantics: excludeFromSemantics,
            height: height,
            margin: margin,
            padding: padding,
            preferBelow: preferBelow,
            showDuration: showDuration,
            textStyle: textStyle,
            triggerMode: triggerMode,
            verticalOffset: verticalOffset,
            waitDuration: waitDuration) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['height'] = _36c2.maybeBoxObject(
        object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['margin'] = _36c2.maybeBoxObject(
        object: this.margin, hydroState: hydroState, table: _36c2.HydroTable());
    table['verticalOffset'] = _36c2.maybeBoxObject(
        object: this.verticalOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['preferBelow'] = _36c2.maybeBoxObject(
        object: this.preferBelow,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['excludeFromSemantics'] = _36c2.maybeBoxObject(
        object: this.excludeFromSemantics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['decoration'] = _36c2.maybeBoxObject(
        object: this.decoration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textStyle'] = _36c2.maybeBoxObject(
        object: this.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['waitDuration'] = _36c2.maybeBoxObject(
        object: this.waitDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showDuration'] = _36c2.maybeBoxObject(
        object: this.showDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['triggerMode'] = _f870.TooltipTriggerMode.values.indexWhere((x) {
      return x == this.triggerMode;
    });
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                decoration: _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                    parentState: hydroState),
                enableFeedback:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['enableFeedback']
                            : null,
                        parentState: hydroState),
                excludeFromSemantics:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['excludeFromSemantics'] : null,
                        parentState: hydroState),
                height: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['height'] : null, parentState: hydroState),
                margin: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['margin'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                preferBelow: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['preferBelow'] : null, parentState: hydroState),
                showDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showDuration'] : null, parentState: hydroState),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
                triggerMode: _36c2.maybeUnBoxEnum(values: _f870.TooltipTriggerMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['triggerMode'] : null),
                verticalOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalOffset'] : null, parentState: hydroState),
                waitDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['waitDuration'] : null, parentState: hydroState)),
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

  _f870.TooltipThemeData unwrap() => this;
  _f870.TooltipThemeData get vmObject => this;
  @_fac9.override
  _f870.TooltipThemeData copyWith(
      {_13a5.Decoration? decoration,
      _fac9.bool? enableFeedback,
      _fac9.bool? excludeFromSemantics,
      _fac9.double? height,
      _96d1.EdgeInsetsGeometry? margin,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.bool? preferBelow,
      _fac9.Duration? showDuration,
      _74d0.TextStyle? textStyle,
      _f870.TooltipTriggerMode? triggerMode,
      _fac9.double? verticalOffset,
      _fac9.Duration? waitDuration}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_f870.TooltipThemeData, _fac9.dynamic>(
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

void loadTooltipThemeData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tooltipThemeData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTooltipThemeData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          decoration: _36c2
              .maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['decoration'] : null,
                  parentState: hydroState),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          excludeFromSemantics: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['excludeFromSemantics']
              : null,
          height: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['height']
              : null?.toDouble(),
          margin: _36c2
              .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['margin']
                      : null,
                  parentState: hydroState),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null,
              parentState: hydroState),
          preferBelow: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['preferBelow'] : null,
          showDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showDuration'] : null, parentState: hydroState),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
          triggerMode: _36c2.maybeUnBoxEnum(values: _f870.TooltipTriggerMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['triggerMode'] : null),
          verticalOffset: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalOffset'] : null?.toDouble(),
          waitDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['waitDuration'] : null, parentState: hydroState))
    ];
  });
  table['tooltipThemeDataLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _f870.TooltipThemeData.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_f870.TooltipThemeData?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_f870.TooltipThemeData?,
            _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_f870.TooltipThemeData?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_f870.TooltipThemeData>(boxer: (
      {required _f870.TooltipThemeData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTooltipThemeData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
