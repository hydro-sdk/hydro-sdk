import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/announceSemanticsEvent.dart'
    as _375a;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/attributedString.dart'
    as _6425;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/attributedStringProperty.dart'
    as _d6d0;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/customSemanticsAction.dart'
    as _5e7a;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/longPressSemanticsEvent.dart'
    as _dcfd;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/ordinalSortKey.dart'
    as _9878;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsBinding.dart'
    as _74ef;
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
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsProperties.dart'
    as _7b78;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsService.dart'
    as _1888;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsSortKey.dart'
    as _8122;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/semanticsTag.dart'
    as _7cd6;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/tapSemanticEvent.dart'
    as _1d7d;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/tooltipSemanticsEvent.dart'
    as _2cd9;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/semantics/updateLiveRegionEvent.dart'
    as _96b1;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadsemantics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final loadsemantics = _36c2.HydroTable();
  table['loadsemantics'] = loadsemantics;
  _53d4.loadSemanticsEvent(table: loadsemantics, hydroState: hydroState);
  _375a.loadAnnounceSemanticsEvent(
      table: loadsemantics, hydroState: hydroState);
  _2cd9.loadTooltipSemanticsEvent(table: loadsemantics, hydroState: hydroState);
  _dcfd.loadLongPressSemanticsEvent(
      table: loadsemantics, hydroState: hydroState);
  _1d7d.loadTapSemanticEvent(table: loadsemantics, hydroState: hydroState);
  _96b1.loadUpdateLiveRegionEvent(table: loadsemantics, hydroState: hydroState);
  _1888.loadSemanticsService(table: loadsemantics, hydroState: hydroState);
  _7cd6.loadSemanticsTag(table: loadsemantics, hydroState: hydroState);
  _5e7a.loadCustomSemanticsAction(table: loadsemantics, hydroState: hydroState);
  _6425.loadAttributedString(table: loadsemantics, hydroState: hydroState);
  _d6d0.loadAttributedStringProperty(
      table: loadsemantics, hydroState: hydroState);
  _6399.loadSemanticsData(table: loadsemantics, hydroState: hydroState);
  _5ffd.loadSemanticsHintOverrides(
      table: loadsemantics, hydroState: hydroState);
  _7b78.loadSemanticsProperties(table: loadsemantics, hydroState: hydroState);
  _a8c1.loadSemanticsNode(table: loadsemantics, hydroState: hydroState);
  _809c.loadSemanticsOwner(table: loadsemantics, hydroState: hydroState);
  _cc4c.loadSemanticsConfiguration(
      table: loadsemantics, hydroState: hydroState);
  _8122.loadSemanticsSortKey(table: loadsemantics, hydroState: hydroState);
  _9878.loadOrdinalSortKey(table: loadsemantics, hydroState: hydroState);
  _74ef.loadSemanticsBinding(table: loadsemantics, hydroState: hydroState);
}
