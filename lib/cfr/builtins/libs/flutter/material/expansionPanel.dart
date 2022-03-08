import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/expansion_panel.dart' as _1003;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedExpansionPanel extends _36c2.VMManagedBox<_1003.ExpansionPanel> {
  VMManagedExpansionPanel(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['body'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.body,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isExpanded'] = vmObject.isExpanded;
    table['canTapOnHeader'] = vmObject.canTapOnHeader;
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1003.ExpansionPanel vmObject;
}

class RTManagedExpansionPanel extends _1003.ExpansionPanel
    implements _36c2.Box<_1003.ExpansionPanel> {
  RTManagedExpansionPanel(
      {_a643.Color? backgroundColor,
      required _fac9.bool canTapOnHeader,
      required _fac9.bool isExpanded,
      required _e2dc.Widget body,
      required _e2dc.Widget Function(
              _e2dc.BuildContext context, _fac9.bool isExpanded)
          headerBuilder,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            canTapOnHeader: canTapOnHeader,
            isExpanded: isExpanded,
            body: body,
            headerBuilder: headerBuilder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['body'] = _36c2.maybeBoxObject(
        object: this.body, hydroState: hydroState, table: _36c2.HydroTable());
    table['isExpanded'] = _36c2.maybeBoxObject(
        object: this.isExpanded,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['canTapOnHeader'] = _36c2.maybeBoxObject(
        object: this.canTapOnHeader,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1003.ExpansionPanel unwrap() => this;
  _1003.ExpansionPanel get vmObject => this;
}

void loadExpansionPanel(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['expansionPanel'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedheaderBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['headerBuilder']
        : null;
    return [
      RTManagedExpansionPanel(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          canTapOnHeader: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['canTapOnHeader']
              : null,
          isExpanded: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['isExpanded']
              : null,
          body: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['body']
                  : null,
              parentState: hydroState),
          headerBuilder: (context, isExpanded) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedheaderBuilder.dispatch(
                    [luaCallerArguments[0], context, isExpanded],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1003.ExpansionPanel>(boxer: (
      {required _1003.ExpansionPanel vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedExpansionPanel(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
