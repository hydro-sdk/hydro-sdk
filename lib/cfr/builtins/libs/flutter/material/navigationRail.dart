import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/navigation_rail.dart' as _bdb1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/icon_theme_data.dart' as _05d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigationRail extends _36c2.VMManagedBox<_bdb1.NavigationRail> {
  VMManagedNavigationRail(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extended'] = vmObject.extended;
    table['leading'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['destinations'] =
        _36c2.maybeBoxObject<_fac9.List<_bdb1.NavigationRailDestination>>(
            object: vmObject.destinations,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['selectedIndex'] = vmObject.selectedIndex;
    table['elevation'] = vmObject.elevation;
    table['groupAlignment'] = vmObject.groupAlignment;
    table['labelType'] = _bdb1.NavigationRailLabelType.values.indexWhere((x) {
      return x == vmObject.labelType;
    });
    table['unselectedLabelTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelTextStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.selectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject<_05d1.IconThemeData?>(
        object: vmObject.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minWidth'] = vmObject.minWidth;
    table['minExtendedWidth'] = vmObject.minExtendedWidth;
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

  final _bdb1.NavigationRail vmObject;
}

class RTManagedNavigationRail extends _bdb1.NavigationRail
    implements _36c2.Box<_bdb1.NavigationRail> {
  RTManagedNavigationRail(
      {_a643.Color? backgroundColor,
      _fac9.double? elevation,
      required _fac9.bool extended,
      _fac9.double? groupAlignment,
      _ab4a.Key? key,
      _bdb1.NavigationRailLabelType? labelType,
      _e2dc.Widget? leading,
      _fac9.double? minExtendedWidth,
      _fac9.double? minWidth,
      void Function(_fac9.int value)? onDestinationSelected,
      _05d1.IconThemeData? selectedIconTheme,
      _74d0.TextStyle? selectedLabelTextStyle,
      _e2dc.Widget? trailing,
      _05d1.IconThemeData? unselectedIconTheme,
      _74d0.TextStyle? unselectedLabelTextStyle,
      required _fac9.List<_bdb1.NavigationRailDestination> destinations,
      required _fac9.int selectedIndex,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            elevation: elevation,
            extended: extended,
            groupAlignment: groupAlignment,
            key: key,
            labelType: labelType,
            leading: leading,
            minExtendedWidth: minExtendedWidth,
            minWidth: minWidth,
            onDestinationSelected: onDestinationSelected,
            selectedIconTheme: selectedIconTheme,
            selectedLabelTextStyle: selectedLabelTextStyle,
            trailing: trailing,
            unselectedIconTheme: unselectedIconTheme,
            unselectedLabelTextStyle: unselectedLabelTextStyle,
            destinations: destinations,
            selectedIndex: selectedIndex) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extended'] = _36c2.maybeBoxObject(
        object: this.extended,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['leading'] = _36c2.maybeBoxObject(
        object: this.leading,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['trailing'] = _36c2.maybeBoxObject(
        object: this.trailing,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['destinations'] = _36c2.maybeBoxObject(
        object: this.destinations,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIndex'] = _36c2.maybeBoxObject(
        object: this.selectedIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['groupAlignment'] = _36c2.maybeBoxObject(
        object: this.groupAlignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelType'] = _bdb1.NavigationRailLabelType.values.indexWhere((x) {
      return x == this.labelType;
    });
    table['unselectedLabelTextStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedLabelTextStyle'] = _36c2.maybeBoxObject(
        object: this.selectedLabelTextStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.unselectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIconTheme'] = _36c2.maybeBoxObject(
        object: this.selectedIconTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minWidth'] = _36c2.maybeBoxObject(
        object: this.minWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minExtendedWidth'] = _36c2.maybeBoxObject(
        object: this.minExtendedWidth,
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

  _bdb1.NavigationRail unwrap() => this;
  _bdb1.NavigationRail get vmObject => this;
  @_fac9.override
  _e2dc.State<_bdb1.NavigationRail> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_bdb1.NavigationRail>,
            _bdb1.NavigationRail>(
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

void loadNavigationRail(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['navigationRail'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonDestinationSelected =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onDestinationSelected']
            : null;

    return [
      RTManagedNavigationRail(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          extended: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['extended']
              : null,
          groupAlignment: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['groupAlignment']
              : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          labelType: _36c2.maybeUnBoxEnum(
              values: _bdb1.NavigationRailLabelType.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelType'] : null),
          leading: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['leading'] : null, parentState: hydroState),
          minExtendedWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minExtendedWidth'] : null?.toDouble(),
          minWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minWidth'] : null?.toDouble(),
          onDestinationSelected: unpackedonDestinationSelected != null
              ? (value) => unpackedonDestinationSelected.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          selectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIconTheme'] : null, parentState: hydroState),
          selectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedLabelTextStyle'] : null, parentState: hydroState),
          trailing: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['trailing'] : null, parentState: hydroState),
          unselectedIconTheme: _36c2.maybeUnBoxAndBuildArgument<_05d1.IconThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedIconTheme'] : null, parentState: hydroState),
          unselectedLabelTextStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelTextStyle'] : null, parentState: hydroState),
          destinations: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_bdb1.NavigationRailDestination>, _bdb1.NavigationRailDestination>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['destinations'] : null, parentState: hydroState),
          selectedIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedIndex'] : null)
    ];
  });
  table['navigationRailExtendedAnimation'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_86ca.Animation>(
          object: _bdb1.NavigationRail.extendedAnimation(_36c2
              .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_bdb1.NavigationRail>(boxer: (
      {required _bdb1.NavigationRail vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNavigationRail(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
