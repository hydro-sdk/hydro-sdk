import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/button_bar.dart' as _a1db;
import 'package:flutter/src/material/button_theme.dart' as _c547;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/flex.dart' as _7374;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedButtonBar extends _36c2.VMManagedBox<_a1db.ButtonBar> {
  VMManagedButtonBar(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['alignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == vmObject.alignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == vmObject.mainAxisSize;
    });
    table['buttonTextTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == vmObject.buttonTextTheme;
    });
    table['buttonMinWidth'] = vmObject.buttonMinWidth;
    table['buttonHeight'] = vmObject.buttonHeight;
    table['buttonPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonAlignedDropdown'] = vmObject.buttonAlignedDropdown;
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == vmObject.layoutBehavior;
    });
    table['overflowDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == vmObject.overflowDirection;
    });
    table['overflowButtonSpacing'] = vmObject.overflowButtonSpacing;
    table['children'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(
        object: vmObject.children,
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

  final _a1db.ButtonBar vmObject;
}

class RTManagedButtonBar extends _a1db.ButtonBar
    implements _36c2.Box<_a1db.ButtonBar> {
  RTManagedButtonBar(
      {_7374.MainAxisAlignment? alignment,
      _fac9.bool? buttonAlignedDropdown,
      _fac9.double? buttonHeight,
      _fac9.double? buttonMinWidth,
      _96d1.EdgeInsetsGeometry? buttonPadding,
      _c547.ButtonTextTheme? buttonTextTheme,
      required _fac9.List<_e2dc.Widget> children,
      _ab4a.Key? key,
      _c547.ButtonBarLayoutBehavior? layoutBehavior,
      _7374.MainAxisSize? mainAxisSize,
      _fac9.double? overflowButtonSpacing,
      _487f.VerticalDirection? overflowDirection,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            buttonAlignedDropdown: buttonAlignedDropdown,
            buttonHeight: buttonHeight,
            buttonMinWidth: buttonMinWidth,
            buttonPadding: buttonPadding,
            buttonTextTheme: buttonTextTheme,
            children: children,
            key: key,
            layoutBehavior: layoutBehavior,
            mainAxisSize: mainAxisSize,
            overflowButtonSpacing: overflowButtonSpacing,
            overflowDirection: overflowDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['alignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == this.alignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == this.mainAxisSize;
    });
    table['buttonTextTheme'] = _c547.ButtonTextTheme.values.indexWhere((x) {
      return x == this.buttonTextTheme;
    });
    table['buttonMinWidth'] = _36c2.maybeBoxObject(
        object: this.buttonMinWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonHeight'] = _36c2.maybeBoxObject(
        object: this.buttonHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonPadding'] = _36c2.maybeBoxObject(
        object: this.buttonPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['buttonAlignedDropdown'] = _36c2.maybeBoxObject(
        object: this.buttonAlignedDropdown,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['layoutBehavior'] =
        _c547.ButtonBarLayoutBehavior.values.indexWhere((x) {
      return x == this.layoutBehavior;
    });
    table['overflowDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == this.overflowDirection;
    });
    table['overflowButtonSpacing'] = _36c2.maybeBoxObject(
        object: this.overflowButtonSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['children'] = _36c2.maybeBoxObject(
        object: this.children,
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

  _a1db.ButtonBar unwrap() => this;
  _a1db.ButtonBar get vmObject => this;
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

void loadButtonBar(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['buttonBar'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedButtonBar(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisAlignment.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['alignment']
                  : null),
          buttonAlignedDropdown: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonAlignedDropdown']
              : null,
          buttonHeight: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonHeight']
              : null?.toDouble(),
          buttonMinWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['buttonMinWidth']
              : null?.toDouble(),
          buttonPadding:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['buttonPadding']
                      : null,
                  parentState: hydroState),
          buttonTextTheme: _36c2.maybeUnBoxEnum(
              values: _c547.ButtonTextTheme.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['buttonTextTheme']
                  : null),
          children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['children'] : null,
              parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          layoutBehavior: _36c2.maybeUnBoxEnum(values: _c547.ButtonBarLayoutBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutBehavior'] : null),
          mainAxisSize: _36c2.maybeUnBoxEnum(values: _7374.MainAxisSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisSize'] : null),
          overflowButtonSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflowButtonSpacing'] : null?.toDouble(),
          overflowDirection: _36c2.maybeUnBoxEnum(values: _487f.VerticalDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overflowDirection'] : null))
    ];
  });
  _36c2.registerBoxer<_a1db.ButtonBar>(boxer: (
      {required _a1db.ButtonBar vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedButtonBar(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
