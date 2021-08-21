import 'dart:core';
import 'dart:ui';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSemanticsFlag extends VMManagedBox<SemanticsFlag> {
  VMManagedSemanticsFlag(
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

  final SemanticsFlag vmObject;
}

void loadSemanticsFlag(
    {required HydroState hydroState, required HydroTable table}) {
  table['semanticsFlagHasCheckedState'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.hasCheckedState,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsChecked'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isChecked,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsSelected'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isSelected,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsButton'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isButton,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsTextField'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isTextField,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsSlider'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isSlider,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsReadOnly'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isReadOnly,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsLink'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isLink,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsFocusable'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isFocusable,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsFocused'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isFocused,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagHasEnabledState'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.hasEnabledState,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsEnabled'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isEnabled,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsInMutuallyExclusiveGroup'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isInMutuallyExclusiveGroup,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsHeader'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isHeader,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsObscured'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isObscured,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsMultiline'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isMultiline,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagScopesRoute'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.scopesRoute,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagNamesRoute'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.namesRoute,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsHidden'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isHidden,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsImage'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isImage,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsLiveRegion'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isLiveRegion,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagHasToggledState'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.hasToggledState,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagIsToggled'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.isToggled,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['semanticsFlagHasImplicitScrolling'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<SemanticsFlag>(
          object: SemanticsFlag.hasImplicitScrolling,
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<SemanticsFlag>(boxer: (
      {required SemanticsFlag vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSemanticsFlag(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
