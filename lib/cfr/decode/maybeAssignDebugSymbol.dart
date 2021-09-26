import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';

void maybeAssignDebugSymbol({
  required HydroState hydroState,
  required Prototype prototype,
}) {
  if (prototype.buildProfile == BuildProfile.debug) {
    prototype.debugSymbol = hydroState.symbols?.firstWhereOrNull((element) =>
        element.lineStart == prototype.lineStart &&
        element.lineEnd == prototype.lineEnd &&
        (element.parameterNames!.length -
                (element.parameterNames!
                                .firstWhereOrNull((param) => param == "...") !=
                            null
                        ? 1
                        : 0)
                    .abs()) ==
            prototype.params &&
        (prototype.varag == 1 ? true : false) ==
            (element.parameterNames!
                        .firstWhereOrNull((param) => param == "...") !=
                    null
                ? true
                : false));
  }
}
