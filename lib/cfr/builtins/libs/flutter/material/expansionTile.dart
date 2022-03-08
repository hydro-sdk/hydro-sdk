import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/expansion_tile.dart' as _5427;
import 'package:flutter/src/material/list_tile.dart' as _fe2b;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/flex.dart' as _7374;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedExpansionTile extends _36c2.VMManagedBox<_5427.ExpansionTile> {
  VMManagedExpansionTile(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['leading'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['children'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(
        object: vmObject.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedBackgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.collapsedBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initiallyExpanded'] = vmObject.initiallyExpanded;
    table['maintainState'] = vmObject.maintainState;
    table['tilePadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.tilePadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['expandedAlignment'] = _36c2.maybeBoxObject<_ca85.Alignment?>(
        object: vmObject.expandedAlignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['expandedCrossAxisAlignment'] =
        _7374.CrossAxisAlignment.values.indexWhere((x) {
      return x == vmObject.expandedCrossAxisAlignment;
    });
    table['childrenPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.childrenPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedIconColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.collapsedIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.textColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedTextColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.collapsedTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controlAffinity'] =
        _fe2b.ListTileControlAffinity.values.indexWhere((x) {
      return x == vmObject.controlAffinity;
    });
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

  final _5427.ExpansionTile vmObject;
}

class RTManagedExpansionTile extends _5427.ExpansionTile
    implements _36c2.Box<_5427.ExpansionTile> {
  RTManagedExpansionTile(
      {_a643.Color? backgroundColor,
      required _fac9.List<_e2dc.Widget> children,
      _96d1.EdgeInsetsGeometry? childrenPadding,
      _a643.Color? collapsedBackgroundColor,
      _a643.Color? collapsedIconColor,
      _a643.Color? collapsedTextColor,
      _fe2b.ListTileControlAffinity? controlAffinity,
      _ca85.Alignment? expandedAlignment,
      _7374.CrossAxisAlignment? expandedCrossAxisAlignment,
      _a643.Color? iconColor,
      required _fac9.bool initiallyExpanded,
      _ab4a.Key? key,
      _e2dc.Widget? leading,
      required _fac9.bool maintainState,
      void Function(_fac9.bool value)? onExpansionChanged,
      _e2dc.Widget? subtitle,
      _a643.Color? textColor,
      _96d1.EdgeInsetsGeometry? tilePadding,
      _e2dc.Widget? trailing,
      required _e2dc.Widget title,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            children: children,
            childrenPadding: childrenPadding,
            collapsedBackgroundColor: collapsedBackgroundColor,
            collapsedIconColor: collapsedIconColor,
            collapsedTextColor: collapsedTextColor,
            controlAffinity: controlAffinity,
            expandedAlignment: expandedAlignment,
            expandedCrossAxisAlignment: expandedCrossAxisAlignment,
            iconColor: iconColor,
            initiallyExpanded: initiallyExpanded,
            key: key,
            leading: leading,
            maintainState: maintainState,
            onExpansionChanged: onExpansionChanged,
            subtitle: subtitle,
            textColor: textColor,
            tilePadding: tilePadding,
            trailing: trailing,
            title: title) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['leading'] = _36c2.maybeBoxObject(
        object: this.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject(
        object: this.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['children'] = _36c2.maybeBoxObject(
        object: this.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedBackgroundColor'] = _36c2.maybeBoxObject(
        object: this.collapsedBackgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject(
        object: this.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initiallyExpanded'] = _36c2.maybeBoxObject(
        object: this.initiallyExpanded,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maintainState'] = _36c2.maybeBoxObject(
        object: this.maintainState,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tilePadding'] = _36c2.maybeBoxObject(
        object: this.tilePadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['expandedAlignment'] = _36c2.maybeBoxObject(
        object: this.expandedAlignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['expandedCrossAxisAlignment'] =
        _7374.CrossAxisAlignment.values.indexWhere((x) {
      return x == this.expandedCrossAxisAlignment;
    });
    table['childrenPadding'] = _36c2.maybeBoxObject(
        object: this.childrenPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconColor'] = _36c2.maybeBoxObject(
        object: this.iconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedIconColor'] = _36c2.maybeBoxObject(
        object: this.collapsedIconColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textColor'] = _36c2.maybeBoxObject(
        object: this.textColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['collapsedTextColor'] = _36c2.maybeBoxObject(
        object: this.collapsedTextColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controlAffinity'] =
        _fe2b.ListTileControlAffinity.values.indexWhere((x) {
      return x == this.controlAffinity;
    });
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

  _5427.ExpansionTile unwrap() => this;
  _5427.ExpansionTile get vmObject => this;
  @_fac9.override
  _e2dc.State<_5427.ExpansionTile> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_5427.ExpansionTile>,
            _5427.ExpansionTile>(
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

void loadExpansionTile(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['expansionTile'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonExpansionChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onExpansionChanged']
        : null;

    return [
      RTManagedExpansionTile(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['children']
                  : null,
              parentState: hydroState),
          childrenPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['childrenPadding'] : null,
                  parentState: hydroState),
          collapsedBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['collapsedBackgroundColor'] : null, parentState: hydroState),
          collapsedIconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['collapsedIconColor'] : null, parentState: hydroState),
          collapsedTextColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['collapsedTextColor'] : null, parentState: hydroState),
          controlAffinity: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileControlAffinity.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['controlAffinity'] : null),
          expandedAlignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.Alignment?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['expandedAlignment'] : null, parentState: hydroState),
          expandedCrossAxisAlignment: _36c2.maybeUnBoxEnum(values: _7374.CrossAxisAlignment.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['expandedCrossAxisAlignment'] : null),
          iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null, parentState: hydroState),
          initiallyExpanded: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initiallyExpanded'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          leading: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leading'] : null, parentState: hydroState),
          maintainState: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maintainState'] : null,
          onExpansionChanged: unpackedonExpansionChanged != null
              ? (value) => unpackedonExpansionChanged.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          subtitle: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['subtitle'] : null, parentState: hydroState),
          textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
          tilePadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tilePadding'] : null, parentState: hydroState),
          trailing: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trailing'] : null, parentState: hydroState),
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_5427.ExpansionTile>(boxer: (
      {required _5427.ExpansionTile vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedExpansionTile(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
