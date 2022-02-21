import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsConfiguration.dart'
    as _cc4c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsData.dart'
    as _6399;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsEvent.dart'
    as _53d4;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsHintOverrides.dart'
    as _5ffd;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsNode.dart'
    as _a8c1;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsOwner.dart'
    as _809c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsSortKey.dart'
    as _8122;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsTag.dart'
    as _7cd6;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadsemantics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final loadsemantics = _36c2.HydroTable();
  table['loadsemantics'] = loadsemantics;
  _53d4.loadSemanticsEvent(table: loadsemantics, hydroState: hydroState);
  _7cd6.loadSemanticsTag(table: loadsemantics, hydroState: hydroState);
  _6399.loadSemanticsData(table: loadsemantics, hydroState: hydroState);
  _5ffd.loadSemanticsHintOverrides(
      table: loadsemantics, hydroState: hydroState);
  _a8c1.loadSemanticsNode(table: loadsemantics, hydroState: hydroState);
  _809c.loadSemanticsOwner(table: loadsemantics, hydroState: hydroState);
  _cc4c.loadSemanticsConfiguration(
      table: loadsemantics, hydroState: hydroState);
  _8122.loadSemanticsSortKey(table: loadsemantics, hydroState: hydroState);
}
