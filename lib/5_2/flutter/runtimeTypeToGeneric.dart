import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

enum RuntimeTypes { animatedListState }

GlobalKey translateRTTIToGenericGlobalKey(
    {@required RuntimeTypes runtimeType}) {
  switch (runtimeType) {
    case RuntimeTypes.animatedListState:
      return GlobalKey<AnimatedListState>();
      break;
  }

  return null;
}
