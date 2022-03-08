import 'dart:core' as _fac9;

import 'package:flutter/src/material/navigation_rail.dart' as _bdb1;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNavigationRailDestination
    extends _36c2.VMManagedBox<_bdb1.NavigationRailDestination> {
  VMManagedNavigationRailDestination(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['icon'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.icon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['selectedIcon'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.selectedIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.label,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _bdb1.NavigationRailDestination vmObject;
}

class RTManagedNavigationRailDestination extends _bdb1.NavigationRailDestination
    implements _36c2.Box<_bdb1.NavigationRailDestination> {
  RTManagedNavigationRailDestination(
      {_96d1.EdgeInsetsGeometry? padding,
      _e2dc.Widget? selectedIcon,
      required _e2dc.Widget icon,
      required _e2dc.Widget label,
      required this.table,
      required this.hydroState})
      : super(
            padding: padding,
            selectedIcon: selectedIcon,
            icon: icon,
            label: label) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['icon'] = _36c2.maybeBoxObject(
        object: this.icon, hydroState: hydroState, table: _36c2.HydroTable());
    table['selectedIcon'] = _36c2.maybeBoxObject(
        object: this.selectedIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _bdb1.NavigationRailDestination unwrap() => this;
  _bdb1.NavigationRailDestination get vmObject => this;
}

void loadNavigationRailDestination(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['navigationRailDestination'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedNavigationRailDestination(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['padding']
                  : null,
              parentState: hydroState),
          selectedIcon:
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['selectedIcon']
                      : null,
                  parentState: hydroState),
          icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null,
              parentState: hydroState),
          label: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['label'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_bdb1.NavigationRailDestination>(boxer: (
      {required _bdb1.NavigationRailDestination vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedNavigationRailDestination(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
