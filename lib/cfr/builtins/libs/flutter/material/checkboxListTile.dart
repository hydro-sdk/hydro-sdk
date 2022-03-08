import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/checkbox_list_tile.dart' as _f82e;
import 'package:flutter/src/material/list_tile.dart' as _fe2b;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCheckboxListTile
    extends _36c2.VMManagedBox<_f82e.CheckboxListTile> {
  VMManagedCheckboxListTile(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = vmObject.value;
    table['activeColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.activeColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.checkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tileColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.tileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondary'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.secondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isThreeLine'] = vmObject.isThreeLine;
    table['dense'] = vmObject.dense;
    table['selected'] = vmObject.selected;
    table['controlAffinity'] =
        _fe2b.ListTileControlAffinity.values.indexWhere((x) {
      return x == vmObject.controlAffinity;
    });
    table['autofocus'] = vmObject.autofocus;
    table['contentPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tristate'] = vmObject.tristate;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedTileColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedTileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject<_9716.VisualDensity?>(
        object: vmObject.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject<_b485.FocusNode?>(
        object: vmObject.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
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

  final _f82e.CheckboxListTile vmObject;
}

class RTManagedCheckboxListTile extends _f82e.CheckboxListTile
    implements _36c2.Box<_f82e.CheckboxListTile> {
  RTManagedCheckboxListTile(
      {_a643.Color? activeColor,
      required _fac9.bool autofocus,
      _a643.Color? checkColor,
      _96d1.EdgeInsetsGeometry? contentPadding,
      required _fe2b.ListTileControlAffinity controlAffinity,
      _fac9.bool? dense,
      _fac9.bool? enableFeedback,
      _b485.FocusNode? focusNode,
      required _fac9.bool isThreeLine,
      _ab4a.Key? key,
      _e2dc.Widget? secondary,
      required _fac9.bool selected,
      _a643.Color? selectedTileColor,
      _6be9.ShapeBorder? shape,
      _e2dc.Widget? subtitle,
      _a643.Color? tileColor,
      _e2dc.Widget? title,
      required _fac9.bool tristate,
      _9716.VisualDensity? visualDensity,
      void Function(_fac9.bool? value)? onChanged,
      _fac9.bool? value,
      required this.table,
      required this.hydroState})
      : super(
            activeColor: activeColor,
            autofocus: autofocus,
            checkColor: checkColor,
            contentPadding: contentPadding,
            controlAffinity: controlAffinity,
            dense: dense,
            enableFeedback: enableFeedback,
            focusNode: focusNode,
            isThreeLine: isThreeLine,
            key: key,
            secondary: secondary,
            selected: selected,
            selectedTileColor: selectedTileColor,
            shape: shape,
            subtitle: subtitle,
            tileColor: tileColor,
            title: title,
            tristate: tristate,
            visualDensity: visualDensity,
            onChanged: onChanged,
            value: value) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = _36c2.maybeBoxObject(
        object: this.value, hydroState: hydroState, table: _36c2.HydroTable());
    table['activeColor'] = _36c2.maybeBoxObject(
        object: this.activeColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkColor'] = _36c2.maybeBoxObject(
        object: this.checkColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tileColor'] = _36c2.maybeBoxObject(
        object: this.tileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject(
        object: this.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondary'] = _36c2.maybeBoxObject(
        object: this.secondary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isThreeLine'] = _36c2.maybeBoxObject(
        object: this.isThreeLine,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dense'] = _36c2.maybeBoxObject(
        object: this.dense, hydroState: hydroState, table: _36c2.HydroTable());
    table['selected'] = _36c2.maybeBoxObject(
        object: this.selected,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controlAffinity'] =
        _fe2b.ListTileControlAffinity.values.indexWhere((x) {
      return x == this.controlAffinity;
    });
    table['autofocus'] = _36c2.maybeBoxObject(
        object: this.autofocus,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentPadding'] = _36c2.maybeBoxObject(
        object: this.contentPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tristate'] = _36c2.maybeBoxObject(
        object: this.tristate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['selectedTileColor'] = _36c2.maybeBoxObject(
        object: this.selectedTileColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject(
        object: this.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['focusNode'] = _36c2.maybeBoxObject(
        object: this.focusNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
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

  _f82e.CheckboxListTile unwrap() => this;
  _f82e.CheckboxListTile get vmObject => this;
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

void loadCheckboxListTile(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['checkboxListTile'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onChanged']
        : null;

    return [
      RTManagedCheckboxListTile(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          activeColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['activeColor'] : null,
                  parentState: hydroState),
          autofocus: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['autofocus']
              : null,
          checkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['checkColor'] : null,
              parentState: hydroState),
          contentPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['contentPadding']
                      : null,
                  parentState: hydroState),
          controlAffinity: _36c2.maybeUnBoxEnum(
              values: _fe2b.ListTileControlAffinity.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['controlAffinity'] : null),
          dense: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dense'] : null,
          enableFeedback: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
          focusNode: _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['focusNode'] : null, parentState: hydroState),
          isThreeLine: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isThreeLine'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          secondary: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondary'] : null, parentState: hydroState),
          selected: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selected'] : null,
          selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          subtitle: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle'] : null, parentState: hydroState),
          tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState),
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null, parentState: hydroState),
          tristate: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tristate'] : null,
          visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState),
          onChanged: unpackedonChanged != null
              ? (value) => unpackedonChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          value: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null)
    ];
  });
  _36c2.registerBoxer<_f82e.CheckboxListTile>(boxer: (
      {required _f82e.CheckboxListTile vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCheckboxListTile(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
