import 'package:flutter/widgets.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';

enum RuntimeTypes { AnimatedListState, Color, double }

GlobalKey? translateRTTIToGenericGlobalKey(
    {required RuntimeTypes runtimeType}) {
  switch (runtimeType) {
    case RuntimeTypes.AnimatedListState:
      return GlobalKey<AnimatedListState>();
    case RuntimeTypes.Color:
      break;
    case RuntimeTypes.double:
      break;
  }

  return null;
}

AlwaysStoppedAnimation? translateRTTIToAlwaysStoppedAnimation(
    {required RuntimeTypes runtimeType,
    required HydroState luaState,
    required dynamic value}) {
  switch (runtimeType) {
    case RuntimeTypes.AnimatedListState:
      break;
    case RuntimeTypes.Color:
      return AlwaysStoppedAnimation<Color?>(
          maybeUnBoxAndBuildArgument<Color, dynamic>(value,
              parentState: luaState));
    case RuntimeTypes.double:
      break;
  }
  return null;
}
