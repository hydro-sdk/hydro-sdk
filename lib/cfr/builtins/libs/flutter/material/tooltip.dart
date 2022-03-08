import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/tooltip.dart' as _9de5;
import 'package:flutter/src/material/tooltip_theme.dart' as _f870;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/inline_span.dart' as _b761;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTooltip extends _36c2.VMManagedBox<_9de5.Tooltip> {
  VMManagedTooltip(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['message'] = vmObject.message;
    table['richMessage'] = _36c2.maybeBoxObject<_b761.InlineSpan?>(
        object: vmObject.richMessage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
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
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _9de5.Tooltip vmObject;
}

class RTManagedTooltip extends _9de5.Tooltip
    implements _36c2.Box<_9de5.Tooltip> {
  RTManagedTooltip(
      {_e2dc.Widget? child,
      _13a5.Decoration? decoration,
      _fac9.bool? enableFeedback,
      _fac9.bool? excludeFromSemantics,
      _fac9.double? height,
      _ab4a.Key? key,
      _96d1.EdgeInsetsGeometry? margin,
      _fac9.String? message,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.bool? preferBelow,
      _b761.InlineSpan? richMessage,
      _fac9.Duration? showDuration,
      _74d0.TextStyle? textStyle,
      _f870.TooltipTriggerMode? triggerMode,
      _fac9.double? verticalOffset,
      _fac9.Duration? waitDuration,
      required this.table,
      required this.hydroState})
      : super(
            child: child,
            decoration: decoration,
            enableFeedback: enableFeedback,
            excludeFromSemantics: excludeFromSemantics,
            height: height,
            key: key,
            margin: margin,
            message: message,
            padding: padding,
            preferBelow: preferBelow,
            richMessage: richMessage,
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
    table['message'] = _36c2.maybeBoxObject(
        object: this.message,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['richMessage'] = _36c2.maybeBoxObject(
        object: this.richMessage,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
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
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
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
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
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
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _9de5.Tooltip unwrap() => this;
  _9de5.Tooltip get vmObject => this;
  @_fac9.override
  _e2dc.State<_9de5.Tooltip> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.State<_9de5.Tooltip>, _9de5.Tooltip>(
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
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
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

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTooltip(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tooltip'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTooltip(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          child:
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null,
                  parentState: hydroState),
          decoration:
              _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
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
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          margin: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['margin'] : null, parentState: hydroState),
          message: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['message'] : null,
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          preferBelow: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['preferBelow'] : null,
          richMessage: _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['richMessage'] : null, parentState: hydroState),
          showDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showDuration'] : null, parentState: hydroState),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
          triggerMode: _36c2.maybeUnBoxEnum(values: _f870.TooltipTriggerMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['triggerMode'] : null),
          verticalOffset: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalOffset'] : null?.toDouble(),
          waitDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['waitDuration'] : null, parentState: hydroState))
    ];
  });
  table['tooltipDismissAllToolTips'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _9de5.Tooltip.dismissAllToolTips(),
    ];
  });
  _36c2.registerBoxer<_9de5.Tooltip>(boxer: (
      {required _9de5.Tooltip vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTooltip(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
