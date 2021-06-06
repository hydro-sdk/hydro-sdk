import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

typedef void CustomNamespaceLoader({HydroState? hydroState});

mixin PreloadableCustomNamespaces<T extends StatefulWidget> on State<T> {
  List<CustomNamespaceLoader>? customNamespaceLoaders;

  void preloadCustomNamespaces({required HydroState hydroState}) {
    hydroState.context!.env["com"] = HydroTable();
    hydroState.context!.env["edu"] = HydroTable();
    hydroState.context!.env["gov"] = HydroTable();
    hydroState.context!.env["mil"] = HydroTable();
    hydroState.context!.env["net"] = HydroTable();
    hydroState.context!.env["org"] = HydroTable();

    customNamespaceLoaders?.forEach((x) => x(hydroState: hydroState));
  }
}
