import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/expansion_panel.dart' as _1003;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedExpansionPanelRadio
    extends _36c2.VMManagedBox<_1003.ExpansionPanelRadio> {
  VMManagedExpansionPanelRadio(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['value'] = _36c2.maybeBoxObject<_fac9.Object>(
        object: vmObject.value,
        hydroState: hydroState,
        table: _36c2.HydroTable());

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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _1003.ExpansionPanelRadio vmObject;
}

class RTManagedExpansionPanelRadio extends _1003.ExpansionPanelRadio
    implements _36c2.Box<_1003.ExpansionPanelRadio> {
  RTManagedExpansionPanelRadio(
      {_a643.Color? backgroundColor,
      required _fac9.bool canTapOnHeader,
      required _e2dc.Widget body,
      required _e2dc.Widget Function(
              _e2dc.BuildContext context, _fac9.bool isExpanded)
          headerBuilder,
      required _fac9.Object value,
      required this.table,
      required this.hydroState})
      : super(
            backgroundColor: backgroundColor,
            canTapOnHeader: canTapOnHeader,
            body: body,
            headerBuilder: headerBuilder,
            value: value) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['value'] = _36c2.maybeBoxObject(
        object: this.value, hydroState: hydroState, table: _36c2.HydroTable());

    table['body'] = _36c2.maybeBoxObject(
        object: this.body, hydroState: hydroState, table: _36c2.HydroTable());
    table['isExpanded'] = _36c2.maybeBoxObject(
        object: isExpanded, hydroState: hydroState, table: _36c2.HydroTable());
    table['canTapOnHeader'] = _36c2.maybeBoxObject(
        object: this.canTapOnHeader,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _1003.ExpansionPanelRadio unwrap() => this;
  _1003.ExpansionPanelRadio get vmObject => this;
  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadExpansionPanelRadio(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['expansionPanelRadio'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedheaderBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['headerBuilder']
        : null;

    return [
      RTManagedExpansionPanelRadio(
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
          body: _36c2
              .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['body'] : null,
                  parentState: hydroState),
          headerBuilder: (context, isExpanded) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedheaderBuilder.dispatch(
                    [luaCallerArguments[0], context, isExpanded],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState),
          value: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['value'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_1003.ExpansionPanelRadio>(boxer: (
      {required _1003.ExpansionPanelRadio vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedExpansionPanelRadio(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
