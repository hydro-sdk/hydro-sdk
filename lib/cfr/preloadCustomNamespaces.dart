import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

typedef void CustomNamespaceLoader({HydroState hydroState});

mixin PreloadableCustomNamespaces<T extends StatefulWidget> on State<T> {
  List<CustomNamespaceLoader> customNamespaceLoaders;

  void preloadCustomNamespaces({@required HydroState hydroState}) {
    customNamespaceLoaders?.forEach((x) => x(hydroState: hydroState));
  }
}
