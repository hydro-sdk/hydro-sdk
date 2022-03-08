import 'dart:core' as _fac9;

import 'package:flutter/src/material/stepper.dart' as _b419;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedControlsDetails
    extends _36c2.VMManagedBox<_b419.ControlsDetails> {
  VMManagedControlsDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['currentStep'] = vmObject.currentStep;
    table['stepIndex'] = vmObject.stepIndex;
    table['getIsActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isActive,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b419.ControlsDetails vmObject;
}

class RTManagedControlsDetails extends _b419.ControlsDetails
    implements _36c2.Box<_b419.ControlsDetails> {
  RTManagedControlsDetails(
      {void Function()? onStepCancel,
      void Function()? onStepContinue,
      required _fac9.int currentStep,
      required _fac9.int stepIndex,
      required this.table,
      required this.hydroState})
      : super(
            onStepCancel: onStepCancel,
            onStepContinue: onStepContinue,
            currentStep: currentStep,
            stepIndex: stepIndex) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['currentStep'] = _36c2.maybeBoxObject(
        object: this.currentStep,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stepIndex'] = _36c2.maybeBoxObject(
        object: this.stepIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getIsActive'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isActive];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b419.ControlsDetails unwrap() => this;
  _b419.ControlsDetails get vmObject => this;
  @_fac9.override
  _fac9.bool get isActive {
    _36c2.Closure closure = table["getIsActive"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadControlsDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['controlsDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonStepCancel = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onStepCancel']
        : null;
    _36c2.Closure? unpackedonStepContinue = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onStepContinue']
        : null;

    return [
      RTManagedControlsDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onStepCancel: unpackedonStepCancel != null
              ? () => unpackedonStepCancel.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onStepContinue: unpackedonStepContinue != null
              ? () => unpackedonStepContinue.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          currentStep: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['currentStep']
              : null,
          stepIndex: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['stepIndex']
              : null)
    ];
  });
  _36c2.registerBoxer<_b419.ControlsDetails>(boxer: (
      {required _b419.ControlsDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedControlsDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
