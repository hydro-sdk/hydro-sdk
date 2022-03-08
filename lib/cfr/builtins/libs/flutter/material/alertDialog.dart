import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/dialog.dart' as _1e08;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/flex.dart' as _7374;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAlertDialog extends _36c2.VMManagedBox<_1e08.AlertDialog> {
  VMManagedAlertDialog(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titlePadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.titlePadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['content'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.content,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.contentTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>?>(
        object: vmObject.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.actionsPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsAlignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == vmObject.actionsAlignment;
    });
    table['actionsOverflowDirection'] =
        _487f.VerticalDirection.values.indexWhere((x) {
      return x == vmObject.actionsOverflowDirection;
    });
    table['actionsOverflowButtonSpacing'] =
        vmObject.actionsOverflowButtonSpacing;
    table['buttonPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['semanticLabel'] = vmObject.semanticLabel;
    table['insetPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(
        object: vmObject.insetPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry?>(
        object: vmObject.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollable'] = vmObject.scrollable;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatelessElement>(
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  final _1e08.AlertDialog vmObject;
}

class RTManagedAlertDialog extends _1e08.AlertDialog
    implements _36c2.Box<_1e08.AlertDialog> {
  RTManagedAlertDialog(
      {_fac9.List<_e2dc.Widget>? actions,
      _7374.MainAxisAlignment? actionsAlignment,
      _fac9.double? actionsOverflowButtonSpacing,
      _487f.VerticalDirection? actionsOverflowDirection,
      required _96d1.EdgeInsetsGeometry actionsPadding,
      _ca85.AlignmentGeometry? alignment,
      _a643.Color? backgroundColor,
      _96d1.EdgeInsetsGeometry? buttonPadding,
      required _a643.Clip clipBehavior,
      _e2dc.Widget? content,
      required _96d1.EdgeInsetsGeometry contentPadding,
      _74d0.TextStyle? contentTextStyle,
      _fac9.double? elevation,
      required _96d1.EdgeInsets insetPadding,
      _ab4a.Key? key,
      required _fac9.bool scrollable,
      _fac9.String? semanticLabel,
      _6be9.ShapeBorder? shape,
      _e2dc.Widget? title,
      _96d1.EdgeInsetsGeometry? titlePadding,
      _74d0.TextStyle? titleTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            actions: actions,
            actionsAlignment: actionsAlignment,
            actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
            actionsOverflowDirection: actionsOverflowDirection,
            actionsPadding: actionsPadding,
            alignment: alignment,
            backgroundColor: backgroundColor,
            buttonPadding: buttonPadding,
            clipBehavior: clipBehavior,
            content: content,
            contentPadding: contentPadding,
            contentTextStyle: contentTextStyle,
            elevation: elevation,
            insetPadding: insetPadding,
            key: key,
            scrollable: scrollable,
            semanticLabel: semanticLabel,
            shape: shape,
            title: title,
            titlePadding: titlePadding,
            titleTextStyle: titleTextStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['titlePadding'] = _36c2.maybeBoxObject(
        object: this.titlePadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject(
        object: this.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['content'] = _36c2.maybeBoxObject(
        object: this.content,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject(
        object: this.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentTextStyle'] = _36c2.maybeBoxObject(
        object: this.contentTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject(
        object: this.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsPadding'] = _36c2.maybeBoxObject(
        object: this.actionsPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsAlignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == this.actionsAlignment;
    });
    table['actionsOverflowDirection'] =
        _487f.VerticalDirection.values.indexWhere((x) {
      return x == this.actionsOverflowDirection;
    });
    table['actionsOverflowButtonSpacing'] = _36c2.maybeBoxObject(
        object: this.actionsOverflowButtonSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonPadding'] = _36c2.maybeBoxObject(
        object: this.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['semanticLabel'] = _36c2.maybeBoxObject(
        object: this.semanticLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['insetPadding'] = _36c2.maybeBoxObject(
        object: this.insetPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollable'] = _36c2.maybeBoxObject(
        object: this.scrollable,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  _1e08.AlertDialog unwrap() => this;
  _1e08.AlertDialog get vmObject => this;
  @_fac9.override
  _e2dc.Widget build(context) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatelessElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatelessElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
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

void loadAlertDialog(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['alertDialog'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAlertDialog(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actions: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actions'] : null,
              parentState: hydroState),
          actionsAlignment: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisAlignment.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['actionsAlignment']
                  : null),
          actionsOverflowButtonSpacing: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['actionsOverflowButtonSpacing']
              : null?.toDouble(),
          actionsOverflowDirection: _36c2.maybeUnBoxEnum(
              values: _487f.VerticalDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['actionsOverflowDirection']
                  : null),
          actionsPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['actionsPadding']
                      : null,
                  parentState: hydroState),
          alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['alignment'] : null,
              parentState: hydroState),
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null, parentState: hydroState),
          buttonPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['buttonPadding'] : null, parentState: hydroState),
          clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['clipBehavior'] : null),
          content: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['content'] : null, parentState: hydroState),
          contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentPadding'] : null, parentState: hydroState),
          contentTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['contentTextStyle'] : null, parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          insetPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['insetPadding'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          scrollable: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollable'] : null,
          semanticLabel: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['semanticLabel'] : null,
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null, parentState: hydroState),
          titlePadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titlePadding'] : null, parentState: hydroState),
          titleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleTextStyle'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1e08.AlertDialog>(boxer: (
      {required _1e08.AlertDialog vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAlertDialog(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
