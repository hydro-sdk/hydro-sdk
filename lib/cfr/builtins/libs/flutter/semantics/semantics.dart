import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsConfiguration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsData.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsEvent.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsHintOverrides.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsNode.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsOwner.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsSortKey.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsTag.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadsemantics(
    {required HydroState hydroState, required HydroTable table}) {
  final semantics = HydroTable();
  table['semantics'] = semantics;
  loadSemanticsEvent(table: semantics, hydroState: hydroState);
  loadSemanticsTag(table: semantics, hydroState: hydroState);
  loadSemanticsData(table: semantics, hydroState: hydroState);
  loadSemanticsHintOverrides(table: semantics, hydroState: hydroState);
  loadSemanticsNode(table: semantics, hydroState: hydroState);
  loadSemanticsOwner(table: semantics, hydroState: hydroState);
  loadSemanticsConfiguration(table: semantics, hydroState: hydroState);
  loadSemanticsSortKey(table: semantics, hydroState: hydroState);
}
