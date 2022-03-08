import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/nav_bar.dart' as _5cb5;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/box_border.dart' as _250a;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoSliverNavigationBar
    extends _36c2.VMManagedBox<_5cb5.CupertinoSliverNavigationBar> {
  VMManagedCupertinoSliverNavigationBar(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['largeTitle'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.largeTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['leading'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticallyImplyLeading'] = vmObject.automaticallyImplyLeading;
    table['automaticallyImplyTitle'] = vmObject.automaticallyImplyTitle;
    table['previousPageTitle'] = vmObject.previousPageTitle;
    table['middle'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.middle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsDirectional?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['border'] = _36c2.maybeBoxObject<_250a.Border?>(
        object: vmObject.border,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transitionBetweenRoutes'] = vmObject.transitionBetweenRoutes;
    table['heroTag'] = _36c2.maybeBoxObject<_fac9.Object>(
        object: vmObject.heroTag,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stretch'] = vmObject.stretch;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.opaque,
      ];
    });
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

  final _5cb5.CupertinoSliverNavigationBar vmObject;
}

class RTManagedCupertinoSliverNavigationBar
    extends _5cb5.CupertinoSliverNavigationBar
    implements _36c2.Box<_5cb5.CupertinoSliverNavigationBar> {
  RTManagedCupertinoSliverNavigationBar(
      {required _fac9.bool automaticallyImplyLeading,
      required _fac9.bool automaticallyImplyTitle,
      _a643.Color? backgroundColor,
      _250a.Border? border,
      _a643.Brightness? brightness,
      required _fac9.Object heroTag,
      _ab4a.Key? key,
      _e2dc.Widget? largeTitle,
      _e2dc.Widget? leading,
      _e2dc.Widget? middle,
      _96d1.EdgeInsetsDirectional? padding,
      _fac9.String? previousPageTitle,
      required _fac9.bool stretch,
      _e2dc.Widget? trailing,
      required _fac9.bool transitionBetweenRoutes,
      required this.table,
      required this.hydroState})
      : super(
            automaticallyImplyLeading: automaticallyImplyLeading,
            automaticallyImplyTitle: automaticallyImplyTitle,
            backgroundColor: backgroundColor,
            border: border,
            brightness: brightness,
            heroTag: heroTag,
            key: key,
            largeTitle: largeTitle,
            leading: leading,
            middle: middle,
            padding: padding,
            previousPageTitle: previousPageTitle,
            stretch: stretch,
            trailing: trailing,
            transitionBetweenRoutes: transitionBetweenRoutes) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['largeTitle'] = _36c2.maybeBoxObject(
        object: this.largeTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['leading'] = _36c2.maybeBoxObject(
        object: this.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticallyImplyLeading'] = _36c2.maybeBoxObject(
        object: this.automaticallyImplyLeading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticallyImplyTitle'] = _36c2.maybeBoxObject(
        object: this.automaticallyImplyTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['previousPageTitle'] = _36c2.maybeBoxObject(
        object: this.previousPageTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['middle'] = _36c2.maybeBoxObject(
        object: this.middle, hydroState: hydroState, table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject(
        object: this.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['border'] = _36c2.maybeBoxObject(
        object: this.border, hydroState: hydroState, table: _36c2.HydroTable());
    table['transitionBetweenRoutes'] = _36c2.maybeBoxObject(
        object: this.transitionBetweenRoutes,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['heroTag'] = _36c2.maybeBoxObject(
        object: this.heroTag,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stretch'] = _36c2.maybeBoxObject(
        object: this.stretch,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getOpaque'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.opaque];
    });
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

  _5cb5.CupertinoSliverNavigationBar unwrap() => this;
  _5cb5.CupertinoSliverNavigationBar get vmObject => this;
  @_fac9.override
  _fac9.bool get opaque {
    _36c2.Closure closure = table["getOpaque"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_5cb5.CupertinoSliverNavigationBar> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_5cb5.CupertinoSliverNavigationBar>,
            _5cb5.CupertinoSliverNavigationBar>(
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

void loadCupertinoSliverNavigationBar(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoSliverNavigationBar'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoSliverNavigationBar(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          automaticallyImplyLeading: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['automaticallyImplyLeading']
              : null,
          automaticallyImplyTitle: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['automaticallyImplyTitle']
              : null,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          border: _36c2.maybeUnBoxAndBuildArgument<_250a.Border?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['border']
                  : null,
              parentState: hydroState),
          brightness: _36c2.maybeUnBoxEnum(
              values: _a643.Brightness.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
          heroTag: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['heroTag'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          largeTitle: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['largeTitle'] : null, parentState: hydroState),
          leading: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leading'] : null, parentState: hydroState),
          middle: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['middle'] : null, parentState: hydroState),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsDirectional?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          previousPageTitle: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['previousPageTitle'] : null,
          stretch: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stretch'] : null,
          trailing: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trailing'] : null, parentState: hydroState),
          transitionBetweenRoutes: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transitionBetweenRoutes'] : null)
    ];
  });
  _36c2.registerBoxer<_5cb5.CupertinoSliverNavigationBar>(boxer: (
      {required _5cb5.CupertinoSliverNavigationBar vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoSliverNavigationBar(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
