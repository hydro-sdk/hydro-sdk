import 'package:flutter/foundation.dart';
import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void maybeAssignDebugSymbol({
  @required HydroState hydroState,
  @required Prototype prototype,
}) {
  if (prototype.buildProfile == BuildProfile.debug && kDebugMode) {
    prototype.debugSymbol = hydroState?.symbols?.firstWhere(
        (element) =>
            element.lineStart == prototype.lineStart &&
            element.lineEnd == prototype.lineEnd &&
            element.parameterNames.length == prototype.params,
        orElse: () => null);
  }
}
