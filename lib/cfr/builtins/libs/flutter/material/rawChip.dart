import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadRawChip({required HydroState luaState, required HydroTable table}) {
  table["rawChip"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RawChip(
        key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
            parentState: luaState),
        avatar: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["avatar"],
            parentState: luaState),
        label: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["label"],
            parentState: luaState),
        labelStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["labelStyle"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
            args[0]["padding"],
            parentState: luaState),
        labelPadding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
            args[0]["labelPadding"],
            parentState: luaState),
        deleteIcon: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["deleteIcon"],
            parentState: luaState),
        onDeleted: args[0]["onDeleted"] != null
            ? () {
                Closure closure = args[0]["onDeleted"];
                closure.dispatch([], parentState: luaState);
              }
            : null,
        deleteIconColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["deleteIconColor"],
            parentState: luaState),
        deleteButtonTooltipMessage: args[0]["deleteButtonTooltipMessage"],
        onPressed: args[0]["onPressed"] != null
            ? () {
                Closure closure = args[0]["onPressed"];
                closure.dispatch([], parentState: luaState);
              }
            : null,
        onSelected: args[0]["onSelected"] != null
            ? (val) {
                Closure closure = args[0]["onSelected"];
                closure.dispatch([null, val], parentState: luaState);
              }
            : null,
        pressElevation: args[0]["pressElevation"],
        tapEnabled: args[0]["tapEnabled"],
        selected: args[0]["selected"],
        isEnabled: args[0]["isEnabled"],
        disabledColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["disabledColor"],
            parentState: luaState),
        selectedColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["selectedColor"],
            parentState: luaState),
        tooltip: args[0]["tooltip"],
        clipBehavior: maybeUnBoxEnum(
            values: Clip.values, boxedEnum: args[0]["clipBehavior"]),
        autofocus: args[0]["autofocus"],
        backgroundColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["backgroundColor"],
            parentState: luaState),
        materialTapTargetSize: maybeUnBoxEnum(
            values: MaterialTapTargetSize.values,
            boxedEnum: args[0]["materialTapTargetSize"]),
        elevation: args[0]["elevation"],
        shadowColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["shadowColor"],
            parentState: luaState),
        selectedShadowColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["selectedShadowColor"],
            parentState: luaState),
        showCheckmark: args[0]["showCheckmark"],
        checkmarkColor: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["checkmarkColor"],
            parentState: luaState),
        avatarBorder: maybeUnBoxAndBuildArgument<ShapeBorder, dynamic>(
            args[0]["avatarBorder"],
            parentState: luaState),
      )
    ];
  });
}
