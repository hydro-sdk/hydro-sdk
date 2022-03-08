import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/bottom_navigation_bar.dart' as _c7f4;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart' as _46d2;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBottomNavigationBar
    extends _36c2.VMManagedBox<_c7f4.BottomNavigationBar> {
  VMManagedBottomNavigationBar(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['items'] =
        _36c2.maybeBoxObject<_fac9.List<_46d2.BottomNavigationBarItem>>(
            object: vmObject.items,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['currentIndex'] = vmObject.currentIndex;
    table['elevation'] = vmObject.elevation;
    table['type'] = _c7f4.BottomNavigationBarType.values.indexWhere((x) {
      return x == vmObject.type;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconSize'] = vmObject.iconSize;
    table['selectedItemColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.selectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedItemColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.unselectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.selectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedFontSize'] = vmObject.selectedFontSize;
    table['unselectedFontSize'] = vmObject.unselectedFontSize;
    table['showUnselectedLabels'] = vmObject.showUnselectedLabels;
    table['showSelectedLabels'] = vmObject.showSelectedLabels;
    table['mouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
    table['landscapeLayout'] =
        _c7f4.BottomNavigationBarLandscapeLayout.values.indexWhere((x) {
      return x == vmObject.landscapeLayout;
    });
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getFixedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.fixedColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
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

  final _c7f4.BottomNavigationBar vmObject;
}

class RTManagedBottomNavigationBar extends _c7f4.BottomNavigationBar
    implements _36c2.Box<_c7f4.BottomNavigationBar> {
  RTManagedBottomNavigationBar(
      {_a643.Color? backgroundColor,
      required _fac9.int currentIndex,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      _a643.Color? fixedColor,
      required _fac9.double iconSize,
      _ab4a.Key? key,
      _c7f4.BottomNavigationBarLandscapeLayout? landscapeLayout,
      _fd33.MouseCursor? mouseCursor,
      void Function(_fac9.int value)? onTap,
      required _fac9.double selectedFontSize,
      _05d1.IconThemeData? selectedIconTheme,
      _a643.Color? selectedItemColor,
      _74d0.TextStyle? selectedLabelStyle,
      _fac9.bool? showSelectedLabels,
      _fac9.bool? showUnselectedLabels,
      _c7f4.BottomNavigationBarType? type,
      required _fac9.double unselectedFontSize,
      _05d1.IconThemeData? unselectedIconTheme,
      _a643.Color? unselectedItemColor,
      _74d0.TextStyle? unselectedLabelStyle,
      required _fac9.List<_46d2.BottomNavigationBarItem> items,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            currentIndex: currentIndex,
            elevation: elevation,
            enableFeedback: enableFeedback,
            fixedColor: fixedColor,
            iconSize: iconSize,
            key: key,
            landscapeLayout: landscapeLayout,
            mouseCursor: mouseCursor,
            onTap: onTap,
            selectedFontSize: selectedFontSize,
            selectedIconTheme: selectedIconTheme,
            selectedItemColor: selectedItemColor,
            selectedLabelStyle: selectedLabelStyle,
            showSelectedLabels: showSelectedLabels,
            showUnselectedLabels: showUnselectedLabels,
            type: type,
            unselectedFontSize: unselectedFontSize,
            unselectedIconTheme: unselectedIconTheme,
            unselectedItemColor: unselectedItemColor,
            unselectedLabelStyle: unselectedLabelStyle,
            items: items) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['items'] = _36c2.maybeBoxObject(
        object: this.items, hydroState: hydroState, table: _36c2.HydroTable());
    table['currentIndex'] = _36c2.maybeBoxObject(
        object: this.currentIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['type'] = _c7f4.BottomNavigationBarType.values.indexWhere((x) {
      return x == this.type;
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconSize'] = _36c2.maybeBoxObject(
        object: this.iconSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedItemColor'] = _36c2.maybeBoxObject(
        object: this.selectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedItemColor'] = _36c2.maybeBoxObject(
        object: this.unselectedItemColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.selectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedFontSize'] = _36c2.maybeBoxObject(
        object: this.selectedFontSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedFontSize'] = _36c2.maybeBoxObject(
        object: this.unselectedFontSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showUnselectedLabels'] = _36c2.maybeBoxObject(
        object: this.showUnselectedLabels,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showSelectedLabels'] = _36c2.maybeBoxObject(
        object: this.showSelectedLabels,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['landscapeLayout'] =
        _c7f4.BottomNavigationBarLandscapeLayout.values.indexWhere((x) {
      return x == this.landscapeLayout;
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getFixedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.fixedColor];
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

  _c7f4.BottomNavigationBar unwrap() => this;
  _c7f4.BottomNavigationBar get vmObject => this;
  @_fac9.override
  _a643.Color? get fixedColor {
    _36c2.Closure closure = table["getFixedColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.State<_c7f4.BottomNavigationBar> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_c7f4.BottomNavigationBar>, _c7f4.BottomNavigationBar>(
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

void loadBottomNavigationBar(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['bottomNavigationBar'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;

    return [
      RTManagedBottomNavigationBar(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          currentIndex: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['currentIndex']
              : null,
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          fixedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixedColor'] : null,
              parentState: hydroState),
          iconSize: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['iconSize']
              : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          landscapeLayout: _36c2.maybeUnBoxEnum(
              values: _c7f4.BottomNavigationBarLandscapeLayout.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['landscapeLayout'] : null),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          onTap: unpackedonTap != null
              ? (value) => unpackedonTap.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          selectedFontSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedFontSize'] : null?.toDouble(),
          selectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null, parentState: hydroState),
          selectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedItemColor'] : null, parentState: hydroState),
          selectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelStyle'] : null, parentState: hydroState),
          showSelectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showSelectedLabels'] : null,
          showUnselectedLabels: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showUnselectedLabels'] : null,
          type: _36c2.maybeUnBoxEnum(values: _c7f4.BottomNavigationBarType.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['type'] : null),
          unselectedFontSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedFontSize'] : null?.toDouble(),
          unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
          unselectedItemColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedItemColor'] : null, parentState: hydroState),
          unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState),
          items: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_46d2.BottomNavigationBarItem>, _46d2.BottomNavigationBarItem>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['items'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_c7f4.BottomNavigationBar>(boxer: (
      {required _c7f4.BottomNavigationBar vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBottomNavigationBar(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
