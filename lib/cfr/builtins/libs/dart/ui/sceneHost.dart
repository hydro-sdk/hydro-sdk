import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedSceneHost extends VMManagedBox<SceneHost> {
  VMManagedSceneHost(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['setProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setProperties(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble(),
          luaCallerArguments[7]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SceneHost vmObject;
}

class RTManagedSceneHost extends SceneHost implements Box<SceneHost> {
  RTManagedSceneHost(dynamic viewHolderToken, viewConnectedCallback,
      viewDisconnectedCallback, viewStateChangedCallback,
      {required this.table, required this.hydroState})
      : super(
          viewHolderToken,
          viewConnectedCallback,
          viewDisconnectedCallback,
          viewStateChangedCallback,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_dispose'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_setProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setProperties(
          luaCallerArguments[1]?.toDouble(),
          luaCallerArguments[2]?.toDouble(),
          luaCallerArguments[3]?.toDouble(),
          luaCallerArguments[4]?.toDouble(),
          luaCallerArguments[5]?.toDouble(),
          luaCallerArguments[6]?.toDouble(),
          luaCallerArguments[7]);
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SceneHost unwrap() => this;
  SceneHost get vmObject => this;
  @override
  void dispose() {
    Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setProperties(double width, double height, double insetTop,
      double insetRight, double insetBottom, double insetLeft, bool focusable) {
    Closure closure = table["setProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSceneHost(
    {required HydroState hydroState, required HydroTable table}) {
  table['sceneHost'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSceneHost(
          luaCallerArguments[1],
          viewConnectedCallback != null
              ? () => viewConnectedCallback.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          viewDisconnectedCallback != null
              ? () => viewDisconnectedCallback.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          viewStateChangedCallback != null
              ? () => viewStateChangedCallback.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<SceneHost>(boxer: (
      {required SceneHost vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSceneHost(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
