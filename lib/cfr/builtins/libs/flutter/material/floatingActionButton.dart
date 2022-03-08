import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/floating_action_button.dart' as _312c;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFloatingActionButton
    extends _36c2.VMManagedBox<_312c.FloatingActionButton> {
  VMManagedFloatingActionButton(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = vmObject.tooltip;
    table['foregroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['heroTag'] = _36c2.maybeBoxObject<_fac9.Object?>(
        object: vmObject.heroTag,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['focusElevation'] = vmObject.focusElevation;
    table['hoverElevation'] = vmObject.hoverElevation;
    table['highlightElevation'] = vmObject.highlightElevation;
    table['disabledElevation'] = vmObject.disabledElevation;
    table['mini'] = vmObject.mini;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['isExtended'] = vmObject.isExtended;
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = vmObject.autofocus;
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.materialTapTargetSize;
    });
    table['enableFeedback'] = vmObject.enableFeedback;
    table['extendedIconLabelSpacing'] = vmObject.extendedIconLabelSpacing;
    table['extendedPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.extendedPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.extendedTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _312c.FloatingActionButton vmObject;
}

class RTManagedFloatingActionButton extends _312c.FloatingActionButton
    implements _36c2.Box<_312c.FloatingActionButton> {
  RTManagedFloatingActionButton(
      {required _fac9.bool autofocus,
      _a643.Color? backgroundColor,
      _e2dc.Widget? child,
      required _a643.Clip clipBehavior,
      _fac9.double? disabledElevation,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _a643.Color? focusColor,
      _fac9.double? focusElevation,
      _b485.FocusNode? focusNode,
      _a643.Color? foregroundColor,
      _fac9.Object? heroTag,
      _fac9.double? highlightElevation,
      _a643.Color? hoverColor,
      _fac9.double? hoverElevation,
      required _fac9.bool isExtended,
      _ab4a.Key? key,
      _9716.MaterialTapTargetSize? materialTapTargetSize,
      required _fac9.bool mini,
      _fd33.MouseCursor? mouseCursor,
      _6be9.ShapeBorder? shape,
      _a643.Color? splashColor,
      _fac9.String? tooltip,
      void Function()? onPressed,
      required this.table,
      required this.hydroState})
      : super(
            autofocus: autofocus,
            backgroundColor: backgroundColor,
            child: child,
            clipBehavior: clipBehavior,
            disabledElevation: disabledElevation,
            elevation: elevation,
            enableFeedback: enableFeedback,
            focusColor: focusColor,
            focusElevation: focusElevation,
            focusNode: focusNode,
            foregroundColor: foregroundColor,
            heroTag: heroTag,
            highlightElevation: highlightElevation,
            hoverColor: hoverColor,
            hoverElevation: hoverElevation,
            isExtended: isExtended,
            key: key,
            materialTapTargetSize: materialTapTargetSize,
            mini: mini,
            mouseCursor: mouseCursor,
            shape: shape,
            splashColor: splashColor,
            tooltip: tooltip,
            onPressed: onPressed) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['tooltip'] = _36c2.maybeBoxObject(
        object: this.tooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject(
        object: this.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject(
        object: this.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject(
        object: this.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashColor'] = _36c2.maybeBoxObject(
        object: this.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['heroTag'] = _36c2.maybeBoxObject(
        object: this.heroTag,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusElevation'] = _36c2.maybeBoxObject(
        object: this.focusElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverElevation'] = _36c2.maybeBoxObject(
        object: this.hoverElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['highlightElevation'] = _36c2.maybeBoxObject(
        object: this.highlightElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledElevation'] = _36c2.maybeBoxObject(
        object: this.disabledElevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mini'] = _36c2.maybeBoxObject(
        object: this.mini, hydroState: hydroState, table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['isExtended'] = _36c2.maybeBoxObject(
        object: this.isExtended,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject(
        object: this.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = _36c2.maybeBoxObject(
        object: this.autofocus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialTapTargetSize'] =
        _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == this.materialTapTargetSize;
    });
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedIconLabelSpacing'] = _36c2.maybeBoxObject(
        object: extendedIconLabelSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedPadding'] = _36c2.maybeBoxObject(
        object: extendedPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendedTextStyle'] = _36c2.maybeBoxObject(
        object: extendedTextStyle,
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

  _312c.FloatingActionButton unwrap() => this;
  _312c.FloatingActionButton get vmObject => this;
  @_fac9.override
  _e2dc.Widget build(context) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
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

void loadFloatingActionButton(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['floatingActionButton'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonPressed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPressed']
        : null;
    return [
      RTManagedFloatingActionButton(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['child']
                  : null,
              parentState: hydroState),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['clipBehavior'] : null),
          disabledElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledElevation'] : null?.toDouble(),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          enableFeedback: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusElevation'] : null?.toDouble(),
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
          heroTag: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heroTag'] : null, parentState: hydroState),
          highlightElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightElevation'] : null?.toDouble(),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          hoverElevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverElevation'] : null?.toDouble(),
          isExtended: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isExtended'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          materialTapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialTapTargetSize'] : null),
          mini: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mini'] : null,
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
          tooltip: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltip'] : null,
          onPressed: unpackedonPressed != null
              ? () => unpackedonPressed.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_312c.FloatingActionButton>(boxer: (
      {required _312c.FloatingActionButton vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFloatingActionButton(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
