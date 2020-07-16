import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void maybeAssignDebugSymbol({
  @required HydroState hydroState,
  @required Prototype prototype,
}) {
  if (prototype.buildProfile == BuildProfile.debug &&
      hydroState.debugFunctionsMustHaveDebugSymbols) {
    prototype.debugSymbol = hydroState?.symbols?.firstWhere((element) =>
        element.lineStart == prototype.lineStart &&
        element.lineEnd == prototype.lineEnd &&
        element.parameterNames.length == prototype.params);
    if (prototype.debugSymbol == null) {
      throw "Function prototypes are required to have debug symbols but the prototype from ${prototype.lineStart}-${prototype.lineEnd} in ${prototype.source} could not be matched to a debug symbol";
    }
  }
}
