import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsAction extends VMManagedBox<SemanticsAction> {
  VMManagedSemanticsAction(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['index'] = vmObject.index;
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SemanticsAction vmObject;
}

void loadSemanticsAction(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsActionTap'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.tap,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionLongPress'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.longPress,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionScrollLeft'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.scrollLeft,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionScrollRight'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.scrollRight,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionScrollUp'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.scrollUp,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionScrollDown'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.scrollDown,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionIncrease'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.increase,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionDecrease'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.decrease,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionShowOnScreen'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.showOnScreen,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionMoveCursorForwardByCharacter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.moveCursorForwardByCharacter,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionMoveCursorBackwardByCharacter'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.moveCursorBackwardByCharacter,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionSetSelection'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.setSelection,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionCopy'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.copy,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionCut'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.cut,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionPaste'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.paste,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionDidGainAccessibilityFocus'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.didGainAccessibilityFocus,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionDidLoseAccessibilityFocus'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.didLoseAccessibilityFocus,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionCustomAction'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.customAction,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionDismiss'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.dismiss,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionMoveCursorForwardByWord'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.moveCursorForwardByWord,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsActionMoveCursorBackwardByWord'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsAction>(
          object: SemanticsAction.moveCursorBackwardByWord,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<SemanticsAction>(boxer: (
      {required SemanticsAction vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsAction(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
