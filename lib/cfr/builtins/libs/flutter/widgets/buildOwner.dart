import 'dart:core';

import 'package:flutter/src/foundation/binding.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBuildOwner extends VMManagedBox<BuildOwner> {
  VMManagedBuildOwner(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['focusManager'] = maybeBoxObject<FocusManager>(
        object: vmObject.focusManager,
        hydroState: hydroState,
        table: HydroTable());
    table['scheduleBuildFor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleBuildFor(maybeUnBoxAndBuildArgument<Element, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getDebugBuilding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugBuilding,
      ];
    });
    table['lockState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.lockState(() => unpackedcallback.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['buildScope'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[2];
      vmObject.buildScope(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          unpackedcallback != null
              ? () => unpackedcallback.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['getGlobalKeyCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.globalKeyCount,
      ];
    });
    table['finalizeTree'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.finalizeTree();
      return [];
    });
    table['reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.reassemble(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<DebugReassembleConfig?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final BuildOwner vmObject;
}

class RTManagedBuildOwner extends BuildOwner implements Box<BuildOwner> {
  RTManagedBuildOwner(
      {FocusManager? focusManager,
      onBuildScheduled,
      required this.table,
      required this.hydroState})
      : super(focusManager: focusManager, onBuildScheduled: onBuildScheduled) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['focusManager'] = maybeBoxObject<FocusManager>(
        object: this.focusManager, hydroState: hydroState, table: HydroTable());
    table['_dart_scheduleBuildFor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleBuildFor(maybeUnBoxAndBuildArgument<Element, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDebugBuilding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugBuilding];
    });
    table['_dart_lockState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.lockState(() => unpackedcallback.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_buildScope'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[2];
      super.buildScope(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          unpackedcallback != null
              ? () => unpackedcallback.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null);
      return [];
    });
    table['_dart_getGlobalKeyCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.globalKeyCount];
    });
    table['_dart_finalizeTree'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.finalizeTree();
      return [];
    });
    table['_dart_reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reassemble(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<DebugReassembleConfig?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  BuildOwner unwrap() => this;
  BuildOwner get vmObject => this;
  @override
  void scheduleBuildFor(Element element) {
    Closure closure = table["scheduleBuildFor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugBuilding {
    Closure closure = table["getDebugBuilding"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void lockState(callback) {
    Closure closure = table["lockState"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void buildScope(Element context, [callback]) {
    Closure closure = table["buildScope"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get globalKeyCount {
    Closure closure = table["getGlobalKeyCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void finalizeTree() {
    Closure closure = table["finalizeTree"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void reassemble(Element root, DebugReassembleConfig? reassembleConfig) {
    Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadBuildOwner(
    {required HydroState hydroState, required HydroTable table}) {
  table['buildOwner'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonBuildScheduled = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onBuildScheduled']
        : null;
    return [
      RTManagedBuildOwner(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          focusManager: maybeUnBoxAndBuildArgument<FocusManager?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['focusManager']
                  : null,
              parentState: hydroState),
          onBuildScheduled: unpackedonBuildScheduled != null
              ? () => unpackedonBuildScheduled.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  registerBoxer<BuildOwner>(boxer: (
      {required BuildOwner vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBuildOwner(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
