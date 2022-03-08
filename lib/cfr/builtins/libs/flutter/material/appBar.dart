import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/app_bar.dart' as _ef20;
import 'package:flutter/src/material/text_theme.dart' as _e1f4;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/system_chrome.dart' as _8d60;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAppBar extends _36c2.VMManagedBox<_ef20.AppBar> {
  VMManagedAppBar(
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
    table['automaticallyImplyLeading'] = vmObject.automaticallyImplyLeading;
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>?>(
        object: vmObject.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['flexibleSpace'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.flexibleSpace,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottom'] = _36c2.maybeBoxObject<_75de.PreferredSizeWidget?>(
        object: vmObject.bottom,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['shadowColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == vmObject.brightness;
    });
    table['iconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.actionsIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject<_e1f4.TextTheme?>(
        object: vmObject.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primary'] = vmObject.primary;
    table['centerTitle'] = vmObject.centerTitle;
    table['excludeHeaderSemantics'] = vmObject.excludeHeaderSemantics;
    table['titleSpacing'] = vmObject.titleSpacing;
    table['toolbarOpacity'] = vmObject.toolbarOpacity;
    table['bottomOpacity'] = vmObject.bottomOpacity;
    table['preferredSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.preferredSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarHeight'] = vmObject.toolbarHeight;
    table['leadingWidth'] = vmObject.leadingWidth;
    table['backwardsCompatibility'] = vmObject.backwardsCompatibility;
    table['toolbarTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.toolbarTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemOverlayStyle'] =
        _36c2.maybeBoxObject<_8d60.SystemUiOverlayStyle?>(
            object: vmObject.systemOverlayStyle,
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
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.preferredSize,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ef20.AppBar vmObject;
}

class RTManagedAppBar extends _ef20.AppBar implements _36c2.Box<_ef20.AppBar> {
  RTManagedAppBar(
      {_fac9.List<_e2dc.Widget>? actions,
      _05d1.IconThemeData? actionsIconTheme,
      required _fac9.bool automaticallyImplyLeading,
      _a643.Color? backgroundColor,
      _fac9.bool? backwardsCompatibility,
      _75de.PreferredSizeWidget? bottom,
      required _fac9.double bottomOpacity,
      _a643.Brightness? brightness,
      _fac9.bool? centerTitle,
      _fac9.double? elevation,
      required _fac9.bool excludeHeaderSemantics,
      _e2dc.Widget? flexibleSpace,
      _a643.Color? foregroundColor,
      _05d1.IconThemeData? iconTheme,
      _ab4a.Key? key,
      _e2dc.Widget? leading,
      _fac9.double? leadingWidth,
      required _fac9.bool primary,
      _a643.Color? shadowColor,
      _6be9.ShapeBorder? shape,
      _8d60.SystemUiOverlayStyle? systemOverlayStyle,
      _e1f4.TextTheme? textTheme,
      _e2dc.Widget? title,
      _fac9.double? titleSpacing,
      _74d0.TextStyle? titleTextStyle,
      _fac9.double? toolbarHeight,
      required _fac9.double toolbarOpacity,
      _74d0.TextStyle? toolbarTextStyle,
      required this.table,
      required this.hydroState})
      : super(
            actions: actions,
            actionsIconTheme: actionsIconTheme,
            automaticallyImplyLeading: automaticallyImplyLeading,
            backgroundColor: backgroundColor,
            backwardsCompatibility: backwardsCompatibility,
            bottom: bottom,
            bottomOpacity: bottomOpacity,
            brightness: brightness,
            centerTitle: centerTitle,
            elevation: elevation,
            excludeHeaderSemantics: excludeHeaderSemantics,
            flexibleSpace: flexibleSpace,
            foregroundColor: foregroundColor,
            iconTheme: iconTheme,
            key: key,
            leading: leading,
            leadingWidth: leadingWidth,
            primary: primary,
            shadowColor: shadowColor,
            shape: shape,
            systemOverlayStyle: systemOverlayStyle,
            textTheme: textTheme,
            title: title,
            titleSpacing: titleSpacing,
            titleTextStyle: titleTextStyle,
            toolbarHeight: toolbarHeight,
            toolbarOpacity: toolbarOpacity,
            toolbarTextStyle: toolbarTextStyle) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['leading'] = _36c2.maybeBoxObject(
        object: this.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticallyImplyLeading'] = _36c2.maybeBoxObject(
        object: this.automaticallyImplyLeading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject(
        object: this.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['flexibleSpace'] = _36c2.maybeBoxObject(
        object: this.flexibleSpace,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottom'] = _36c2.maybeBoxObject(
        object: this.bottom, hydroState: hydroState, table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject(
        object: this.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject(
        object: this.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['brightness'] = _a643.Brightness.values.indexWhere((x) {
      return x == this.brightness;
    });
    table['iconTheme'] = _36c2.maybeBoxObject(
        object: this.iconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actionsIconTheme'] = _36c2.maybeBoxObject(
        object: this.actionsIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textTheme'] = _36c2.maybeBoxObject(
        object: this.textTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primary'] = _36c2.maybeBoxObject(
        object: this.primary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['centerTitle'] = _36c2.maybeBoxObject(
        object: this.centerTitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['excludeHeaderSemantics'] = _36c2.maybeBoxObject(
        object: this.excludeHeaderSemantics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleSpacing'] = _36c2.maybeBoxObject(
        object: this.titleSpacing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarOpacity'] = _36c2.maybeBoxObject(
        object: this.toolbarOpacity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomOpacity'] = _36c2.maybeBoxObject(
        object: this.bottomOpacity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['preferredSize'] = _36c2.maybeBoxObject(
        object: preferredSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarHeight'] = _36c2.maybeBoxObject(
        object: this.toolbarHeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['leadingWidth'] = _36c2.maybeBoxObject(
        object: this.leadingWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backwardsCompatibility'] = _36c2.maybeBoxObject(
        object: this.backwardsCompatibility,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['toolbarTextStyle'] = _36c2.maybeBoxObject(
        object: this.toolbarTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['titleTextStyle'] = _36c2.maybeBoxObject(
        object: this.titleTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['systemOverlayStyle'] = _36c2.maybeBoxObject(
        object: this.systemOverlayStyle,
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
    table['_dart_getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [preferredSize];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ef20.AppBar unwrap() => this;
  _ef20.AppBar get vmObject => this;
  @_fac9.override
  _e2dc.State<_ef20.AppBar> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.State<_ef20.AppBar>, _ef20.AppBar>(
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

  @_fac9.override
  _a643.Size get preferredSize {
    _36c2.Closure closure = table["getPreferredSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadAppBar(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['appBar'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAppBar(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actions: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actions'] : null,
                  parentState: hydroState),
          actionsIconTheme:
              _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['actionsIconTheme']
                      : null,
                  parentState: hydroState),
          automaticallyImplyLeading: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['automaticallyImplyLeading']
              : null,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                  parentState: hydroState),
          backwardsCompatibility: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backwardsCompatibility'] : null,
          bottom: _36c2.maybeUnBoxAndBuildArgument<_75de.PreferredSizeWidget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottom'] : null, parentState: hydroState),
          bottomOpacity: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomOpacity'] : null?.toDouble(),
          brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['brightness'] : null),
          centerTitle: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['centerTitle'] : null,
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          excludeHeaderSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['excludeHeaderSemantics'] : null,
          flexibleSpace: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['flexibleSpace'] : null, parentState: hydroState),
          foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
          iconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconTheme'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          leading: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leading'] : null, parentState: hydroState),
          leadingWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leadingWidth'] : null?.toDouble(),
          primary: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null,
          shadowColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          systemOverlayStyle: _36c2.maybeUnBoxAndBuildArgument<_8d60.SystemUiOverlayStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemOverlayStyle'] : null, parentState: hydroState),
          textTheme: _36c2.maybeUnBoxAndBuildArgument<_e1f4.TextTheme?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState),
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null, parentState: hydroState),
          titleSpacing: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleSpacing'] : null?.toDouble(),
          titleTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['titleTextStyle'] : null, parentState: hydroState),
          toolbarHeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarHeight'] : null?.toDouble(),
          toolbarOpacity: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarOpacity'] : null?.toDouble(),
          toolbarTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['toolbarTextStyle'] : null, parentState: hydroState))
    ];
  });
  table['appBarPreferredHeightFor'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _ef20.AppBar.preferredHeightFor(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  _36c2.registerBoxer<_ef20.AppBar>(boxer: (
      {required _ef20.AppBar vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAppBar(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
