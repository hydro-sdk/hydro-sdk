import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/toggle_buttons.dart' as _a217;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedToggleButtons extends _36c2.VMManagedBox<_a217.ToggleButtons> {
  VMManagedToggleButtons(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['children'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(
        object: vmObject.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isSelected'] = _36c2.maybeBoxObject<_fac9.List<_fac9.bool>>(
        object: vmObject.isSelected,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['constraints'] = _36c2.maybeBoxObject<_be2e.BoxConstraints?>(
        object: vmObject.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fillColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['highlightColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.highlightColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNodes'] = _36c2.maybeBoxObject<_fac9.List<_b485.FocusNode>?>(
        object: vmObject.focusNodes,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['renderBorder'] = vmObject.renderBorder;
    table['borderColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.borderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedBorderColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedBorderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledBorderColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.disabledBorderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderWidth'] = vmObject.borderWidth;
    table['borderRadius'] = _36c2.maybeBoxObject<_9d8a.BorderRadius?>(
        object: vmObject.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['direction'] = _487f.Axis.values.indexWhere((x) {
      return x == vmObject.direction;
    });
    table['verticalDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == vmObject.verticalDirection;
    });
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

  final _a217.ToggleButtons vmObject;
}

class RTManagedToggleButtons extends _a217.ToggleButtons
    implements _36c2.Box<_a217.ToggleButtons> {
  RTManagedToggleButtons(
      {_a643.Color? borderColor,
      _9d8a.BorderRadius? borderRadius,
      _fac9.double? borderWidth,
      _a643.Color? color,
      _be2e.BoxConstraints? constraints,
      required _487f.Axis direction,
      _a643.Color? disabledBorderColor,
      _a643.Color? disabledColor,
      _a643.Color? fillColor,
      _a643.Color? focusColor,
      _fac9.List<_b485.FocusNode>? focusNodes,
      _a643.Color? highlightColor,
      _a643.Color? hoverColor,
      _ab4a.Key? key,
      _fd33.MouseCursor? mouseCursor,
      void Function(_fac9.int index)? onPressed,
      required _fac9.bool renderBorder,
      _a643.Color? selectedBorderColor,
      _a643.Color? selectedColor,
      _a643.Color? splashColor,
      _74d0.TextStyle? textStyle,
      required _487f.VerticalDirection verticalDirection,
      required _fac9.List<_e2dc.Widget> children,
      required _fac9.List<_fac9.bool> isSelected,
      required this.table,
      required this.hydroState})
      : super(
            borderColor: borderColor,
            borderRadius: borderRadius,
            borderWidth: borderWidth,
            color: color,
            constraints: constraints,
            direction: direction,
            disabledBorderColor: disabledBorderColor,
            disabledColor: disabledColor,
            fillColor: fillColor,
            focusColor: focusColor,
            focusNodes: focusNodes,
            highlightColor: highlightColor,
            hoverColor: hoverColor,
            key: key,
            mouseCursor: mouseCursor,
            onPressed: onPressed,
            renderBorder: renderBorder,
            selectedBorderColor: selectedBorderColor,
            selectedColor: selectedColor,
            splashColor: splashColor,
            textStyle: textStyle,
            verticalDirection: verticalDirection,
            children: children,
            isSelected: isSelected) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['children'] = _36c2.maybeBoxObject(
        object: this.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isSelected'] = _36c2.maybeBoxObject(
        object: this.isSelected,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textStyle'] = _36c2.maybeBoxObject(
        object: this.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['constraints'] = _36c2.maybeBoxObject(
        object: this.constraints,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['selectedColor'] = _36c2.maybeBoxObject(
        object: this.selectedColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject(
        object: this.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fillColor'] = _36c2.maybeBoxObject(
        object: this.fillColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject(
        object: this.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['highlightColor'] = _36c2.maybeBoxObject(
        object: this.highlightColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashColor'] = _36c2.maybeBoxObject(
        object: this.splashColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hoverColor'] = _36c2.maybeBoxObject(
        object: this.hoverColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNodes'] = _36c2.maybeBoxObject(
        object: this.focusNodes,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['renderBorder'] = _36c2.maybeBoxObject(
        object: this.renderBorder,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderColor'] = _36c2.maybeBoxObject(
        object: this.borderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedBorderColor'] = _36c2.maybeBoxObject(
        object: this.selectedBorderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledBorderColor'] = _36c2.maybeBoxObject(
        object: this.disabledBorderColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderWidth'] = _36c2.maybeBoxObject(
        object: this.borderWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderRadius'] = _36c2.maybeBoxObject(
        object: this.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['direction'] = _487f.Axis.values.indexWhere((x) {
      return x == this.direction;
    });
    table['verticalDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == this.verticalDirection;
    });
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

  _a217.ToggleButtons unwrap() => this;
  _a217.ToggleButtons get vmObject => this;
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

void loadToggleButtons(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['toggleButtons'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonPressed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPressed']
        : null;

    return [
      RTManagedToggleButtons(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          borderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['borderColor'] : null,
              parentState: hydroState),
          borderRadius:
              _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['borderRadius']
                      : null,
                  parentState: hydroState),
          borderWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['borderWidth']
              : null?.toDouble(),
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          constraints: _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['constraints'] : null,
              parentState: hydroState),
          direction: _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['direction'] : null),
          disabledBorderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledBorderColor'] : null, parentState: hydroState),
          disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
          fillColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fillColor'] : null, parentState: hydroState),
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusNodes: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_b485.FocusNode>?, _b485.FocusNode>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNodes'] : null, parentState: hydroState),
          highlightColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highlightColor'] : null, parentState: hydroState),
          hoverColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hoverColor'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          onPressed: unpackedonPressed != null
              ? (index) => unpackedonPressed.dispatch(
                    [luaCallerArguments[0], index],
                    parentState: hydroState,
                  )
              : null,
          renderBorder: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['renderBorder'] : null,
          selectedBorderColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedBorderColor'] : null, parentState: hydroState),
          selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
          splashColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashColor'] : null, parentState: hydroState),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
          verticalDirection: _36c2.maybeUnBoxEnum(values: _487f.VerticalDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalDirection'] : null),
          children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['children'] : null, parentState: hydroState),
          isSelected: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.bool>, _fac9.bool>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isSelected'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_a217.ToggleButtons>(boxer: (
      {required _a217.ToggleButtons vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedToggleButtons(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
