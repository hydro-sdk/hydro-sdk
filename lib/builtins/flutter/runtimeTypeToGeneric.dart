import 'package:flua/builtins/flutter/syntheticBox.dart';
import 'package:flua/luastate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

enum RuntimeTypes { AnimatedListState, Color }

GlobalKey translateRTTIToGenericGlobalKey(
    {@required RuntimeTypes runtimeType}) {
  switch (runtimeType) {
    case RuntimeTypes.AnimatedListState:
      return GlobalKey<AnimatedListState>();
      break;
    case RuntimeTypes.Color:
      break;
  }

  return null;
}

AlwaysStoppedAnimation translateRTTIToAlwaysStoppedAnimation(
    {@required RuntimeTypes runtimeType,
    @required LuaState luaState,
    @required dynamic value}) {
  switch (runtimeType) {
    case RuntimeTypes.AnimatedListState:
      break;
    case RuntimeTypes.Color:
      return AlwaysStoppedAnimation<Color>(
          maybeUnwrapAndBuildArgument<Color>(value, parentState: luaState));
      break;
  }
  return null;
}
