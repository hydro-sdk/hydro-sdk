import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

enum RuntimeTypes { AnimatedListState }

GlobalKey translateRTTIToGenericGlobalKey(
    {@required RuntimeTypes runtimeType}) {
  switch (runtimeType) {
    case RuntimeTypes.AnimatedListState:
      return GlobalKey<AnimatedListState>();
      break;
  }

  return null;
}
