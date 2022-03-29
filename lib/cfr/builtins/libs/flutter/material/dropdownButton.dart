import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/dropdown.dart' as _9b55;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDropdownButton
    extends _36c2.VMManagedBox<_9b55.DropdownButton<_fac9.dynamic>> {
  VMManagedDropdownButton(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['items'] = _36c2
        .maybeBoxObject<_fac9.List<_9b55.DropdownMenuItem<_fac9.dynamic>>?>(
            object: vmObject.items,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['hint'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.hint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledHint'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.disabledHint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['style'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.style,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['underline'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.underline,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['icon'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.icon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconDisabledColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconDisabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconEnabledColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconEnabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconSize'] = vmObject.iconSize;
    table['isDense'] = vmObject.isDense;
    table['isExpanded'] = vmObject.isExpanded;
    table['itemHeight'] = vmObject.itemHeight;
    table['focusColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.focusColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['autofocus'] = vmObject.autofocus;
    table['dropdownColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.dropdownColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['menuMaxHeight'] = vmObject.menuMaxHeight;
    table['enableFeedback'] = vmObject.enableFeedback;
    table['alignment'] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(
        object: vmObject.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderRadius'] = _36c2.maybeBoxObject<_9d8a.BorderRadius?>(
        object: vmObject.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _9b55.DropdownButton<_fac9.dynamic> vmObject;
}

class RTManagedDropdownButton extends _9b55.DropdownButton
    implements _36c2.Box<_9b55.DropdownButton> {
  RTManagedDropdownButton(
      {required _ca85.AlignmentGeometry alignment,
      required _fac9.bool autofocus,
      _9d8a.BorderRadius? borderRadius,
      _e2dc.Widget? disabledHint,
      _a643.Color? dropdownColor,
      required _fac9.int elevation,
      _fac9.bool? enableFeedback,
      _a643.Color? focusColor,
      _b485.FocusNode? focusNode,
      _e2dc.Widget? hint,
      _e2dc.Widget? icon,
      _a643.Color? iconDisabledColor,
      _a643.Color? iconEnabledColor,
      required _fac9.double iconSize,
      required _fac9.bool isDense,
      required _fac9.bool isExpanded,
      _fac9.double? itemHeight,
      _ab4a.Key? key,
      _fac9.double? menuMaxHeight,
      void Function()? onTap,
      _fac9.List<_e2dc.Widget> Function(_e2dc.BuildContext context)?
          selectedItemBuilder,
      _74d0.TextStyle? style,
      _e2dc.Widget? underline,
      _fac9.dynamic? value,
      _fac9.List<_9b55.DropdownMenuItem<_fac9.dynamic>>? items,
      void Function(_fac9.dynamic? value)? onChanged,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            autofocus: autofocus,
            borderRadius: borderRadius,
            disabledHint: disabledHint,
            dropdownColor: dropdownColor,
            elevation: elevation,
            enableFeedback: enableFeedback,
            focusColor: focusColor,
            focusNode: focusNode,
            hint: hint,
            icon: icon,
            iconDisabledColor: iconDisabledColor,
            iconEnabledColor: iconEnabledColor,
            iconSize: iconSize,
            isDense: isDense,
            isExpanded: isExpanded,
            itemHeight: itemHeight,
            key: key,
            menuMaxHeight: menuMaxHeight,
            onTap: onTap,
            selectedItemBuilder: selectedItemBuilder,
            style: style,
            underline: underline,
            value: value,
            items: items,
            onChanged: onChanged) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['items'] = _36c2.maybeBoxObject(
        object: this.items, hydroState: hydroState, table: _36c2.HydroTable());
    table['hint'] = _36c2.maybeBoxObject(
        object: this.hint, hydroState: hydroState, table: _36c2.HydroTable());
    table['disabledHint'] = _36c2.maybeBoxObject(
        object: this.disabledHint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _36c2.maybeBoxObject(
        object: this.style, hydroState: hydroState, table: _36c2.HydroTable());
    table['underline'] = _36c2.maybeBoxObject(
        object: this.underline,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['icon'] = _36c2.maybeBoxObject(
        object: this.icon, hydroState: hydroState, table: _36c2.HydroTable());
    table['iconDisabledColor'] = _36c2.maybeBoxObject(
        object: this.iconDisabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconEnabledColor'] = _36c2.maybeBoxObject(
        object: this.iconEnabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconSize'] = _36c2.maybeBoxObject(
        object: this.iconSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isDense'] = _36c2.maybeBoxObject(
        object: this.isDense,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isExpanded'] = _36c2.maybeBoxObject(
        object: this.isExpanded,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['itemHeight'] = _36c2.maybeBoxObject(
        object: this.itemHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusColor'] = _36c2.maybeBoxObject(
        object: this.focusColor,
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
    table['dropdownColor'] = _36c2.maybeBoxObject(
        object: this.dropdownColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['menuMaxHeight'] = _36c2.maybeBoxObject(
        object: this.menuMaxHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderRadius'] = _36c2.maybeBoxObject(
        object: this.borderRadius,
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

  _9b55.DropdownButton unwrap() => this;
  _9b55.DropdownButton get vmObject => this;
  @_fac9.override
  _e2dc.State<_9b55.DropdownButton<_fac9.dynamic>> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_9b55.DropdownButton<_fac9.dynamic>>,
            _9b55.DropdownButton<_fac9.dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
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

void loadDropdownButton(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dropdownButton'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;
    _36c2.Closure? unpackedselectedItemBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['selectedItemBuilder']
        : null;

    _36c2.Closure? unpackedonChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onChanged']
        : null;
    return [
      RTManagedDropdownButton(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['alignment'] : null,
              parentState: hydroState),
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['borderRadius']
                  : null,
              parentState: hydroState),
          disabledHint:
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledHint'] : null,
                  parentState: hydroState),
          dropdownColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dropdownColor'] : null,
              parentState: hydroState),
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null,
          enableFeedback: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
          focusColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusColor'] : null, parentState: hydroState),
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          hint: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['hint'] : null, parentState: hydroState),
          icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null, parentState: hydroState),
          iconDisabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconDisabledColor'] : null, parentState: hydroState),
          iconEnabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconEnabledColor'] : null, parentState: hydroState),
          iconSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconSize'] : null?.toDouble(),
          isDense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isDense'] : null,
          isExpanded: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isExpanded'] : null,
          itemHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['itemHeight'] : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          menuMaxHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['menuMaxHeight'] : null?.toDouble(),
          onTap: unpackedonTap != null
              ? () => unpackedonTap.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null,
          selectedItemBuilder: unpackedselectedItemBuilder != null
              ? (context) => _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(
                  unpackedselectedItemBuilder.dispatch(
                    [luaCallerArguments[0], context],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          style: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null, parentState: hydroState),
          underline: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['underline'] : null, parentState: hydroState),
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null,
          items: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9b55.DropdownMenuItem<_fac9.dynamic>>?, _9b55.DropdownMenuItem<_fac9.dynamic>>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['items'] : null, parentState: hydroState),
          onChanged: unpackedonChanged != null
              ? (value) => unpackedonChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_9b55.DropdownButton>(boxer: (
      {required _9b55.DropdownButton vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDropdownButton(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
