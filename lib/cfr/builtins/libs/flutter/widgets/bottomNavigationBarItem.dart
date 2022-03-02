import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart' as _46d2;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBottomNavigationBarItem
    extends _36c2.VMManagedBox<_46d2.BottomNavigationBarItem> {
  VMManagedBottomNavigationBarItem(
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
    table['activeIcon'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.activeIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['label'] = vmObject.label;
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = vmObject.tooltip;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _46d2.BottomNavigationBarItem vmObject;
}

class RTManagedBottomNavigationBarItem extends _46d2.BottomNavigationBarItem
    implements _36c2.Box<_46d2.BottomNavigationBarItem> {
  RTManagedBottomNavigationBarItem(
      {_e2dc.Widget? activeIcon,
      _a643.Color? backgroundColor,
      _fac9.String? label,
      _e2dc.Widget? title,
      _fac9.String? tooltip,
      required _e2dc.Widget icon,
      required this.table,
      required this.hydroState})
      : super(
            activeIcon: activeIcon,
            backgroundColor: backgroundColor,
            label: label,
            title: title,
            tooltip: tooltip,
            icon: icon) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['icon'] = _36c2.maybeBoxObject(
        object: this.icon, hydroState: hydroState, table: _36c2.HydroTable());
    table['activeIcon'] = _36c2.maybeBoxObject(
        object: this.activeIcon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['label'] = _36c2.maybeBoxObject(
        object: this.label, hydroState: hydroState, table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tooltip'] = _36c2.maybeBoxObject(
        object: this.tooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _46d2.BottomNavigationBarItem unwrap() => this;
  _46d2.BottomNavigationBarItem get vmObject => this;
}

void loadBottomNavigationBarItem(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['bottomNavigationBarItem'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedBottomNavigationBarItem(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          activeIcon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['activeIcon']
                  : null,
              parentState: hydroState),
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['backgroundColor']
                  : null,
              parentState: hydroState),
          label: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['label']
              : null,
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null,
              parentState: hydroState),
          tooltip: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltip'] : null,
          icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_46d2.BottomNavigationBarItem>(boxer: (
      {required _46d2.BottomNavigationBarItem vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedBottomNavigationBarItem(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
