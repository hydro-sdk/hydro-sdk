import 'dart:core' as _fac9;

import 'package:flutter/src/material/stepper.dart' as _b419;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStep extends _36c2.VMManagedBox<_b419.Step> {
  VMManagedStep(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['title'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.title,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['content'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.content,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['state'] = _b419.StepState.values.indexWhere((x) {
      return x == vmObject.state;
    });
    table['isActive'] = vmObject.isActive;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b419.Step vmObject;
}

class RTManagedStep extends _b419.Step implements _36c2.Box<_b419.Step> {
  RTManagedStep(
      {required _fac9.bool isActive,
      required _b419.StepState state,
      _e2dc.Widget? subtitle,
      required _e2dc.Widget content,
      required _e2dc.Widget title,
      required this.table,
      required this.hydroState})
      : super(
            isActive: isActive,
            state: state,
            subtitle: subtitle,
            content: content,
            title: title) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['subtitle'] = _36c2.maybeBoxObject(
        object: this.subtitle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['content'] = _36c2.maybeBoxObject(
        object: this.content,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['state'] = _b419.StepState.values.indexWhere((x) {
      return x == this.state;
    });
    table['isActive'] = _36c2.maybeBoxObject(
        object: this.isActive,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b419.Step unwrap() => this;
  _b419.Step get vmObject => this;
}

void loadStep(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['step'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedStep(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          isActive: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['isActive']
              : null,
          state: _36c2.maybeUnBoxEnum(
              values: _b419.StepState.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['state']
                  : null),
          subtitle:
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['subtitle']
                      : null,
                  parentState: hydroState),
          content: _36c2
              .maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['content'] : null,
                  parentState: hydroState),
          title: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_b419.Step>(boxer: (
      {required _b419.Step vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedStep(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
