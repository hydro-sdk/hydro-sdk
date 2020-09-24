import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

void loadCupertinoTextField(
    {@required HydroState luaState, @required HydroTable table}) {
  table["cupertinoTextField"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      CupertinoTextField(
        key: maybeUnBoxAndBuildArgument<Key>(args[0]["key"],
            parentState: luaState),
        controller: maybeUnBoxAndBuildArgument<TextEditingController>(
            args[0]["controller"],
            parentState: luaState),
        focusNode: maybeUnBoxAndBuildArgument<FocusNode>(args[0]["focusNode"],
            parentState: luaState),
        decoration: maybeUnBoxAndBuildArgument<InputDecoration>(
            args[0]["decoration"],
            parentState: luaState),
        padding: maybeUnBoxAndBuildArgument<EdgeInsets>(args[0]["padding"],
            parentState: luaState),
        placeholder: args[0]["placeholder"],
        placeholderStyle: maybeUnBoxAndBuildArgument<TextStyle>(
            args[0]["placeholderStyle"],
            parentState: luaState),
        prefix: maybeUnBoxAndBuildArgument<Widget>(args[0]["prefix"],
            parentState: luaState),
        prefixMode: maybeUnBoxEnum(
            values: OverlayVisibilityMode.values,
            boxedEnum: args[0]["prefixMode"]),
        suffix: maybeUnBoxAndBuildArgument<Widget>(args[0]["suffix"],
            parentState: luaState),
        suffixMode: maybeUnBoxEnum(
            values: OverlayVisibilityMode.values,
            boxedEnum: args[0]["suffixMode"]),
        clearButtonMode: maybeUnBoxEnum(
            values: OverlayVisibilityMode.values,
            boxedEnum: args[0]["clearButtonMode"]),
        textInputAction: maybeUnBoxEnum(
            values: TextInputAction.values,
            boxedEnum: args[0]["textInputAction"]),
        textCapitalization: maybeUnBoxEnum(
            values: TextCapitalization.values,
            boxedEnum: args[0]["textCapitalization"]),
        style: maybeUnBoxAndBuildArgument<TextStyle>(args[0]["style"],
            parentState: luaState),
        strutStyle: maybeUnBoxAndBuildArgument<StrutStyle>(
            args[0]["strutStyle"],
            parentState: luaState),
        textAlign: maybeUnBoxEnum(
            values: TextAlign.values, boxedEnum: args[0]["textAlign"]),
        textAlignVertical: maybeUnBoxAndBuildArgument<TextAlignVertical>(
            args[0]["textAlignVertical"],
            parentState: luaState),
        readOnly: args[0]["readOnly"],
        toolbarOptions: maybeUnBoxAndBuildArgument<ToolbarOptions>(
            args[0]["toolbarOptions"],
            parentState: luaState),
        showCursor: args[0]["showCursor"],
        autofocus: args[0]["autofocus"],
        obscuringCharacter: args[0]["obscuringCharacter"],
        obscureText: args[0]["obscureText"],
        autocorrect: args[0]["autocorrect"],
        smartDashesType: maybeUnBoxEnum(
            values: SmartDashesType.values,
            boxedEnum: args[0]["smartDashesType"]),
        smartQuotesType: maybeUnBoxEnum(
            values: SmartQuotesType.values,
            boxedEnum: args[0]["smartQuotesType"]),
        enableSuggestions: args[0]["enableSuggestions"],
        maxLines: args[0]["maxLines"],
        minLines: args[0]["minLines"],
        expands: args[0]["expands"],
        maxLength: args[0]["maxLength"],
        maxLengthEnforced: args[0]["maxLengthEnforced"],
        onChanged: args[0]["onChanged"] != null
            ? (String val) {
                Closure closure = args[0]["onChanged"];
                closure.dispatch(
                  [val],
                  parentState: luaState,
                  resetEnclosingLexicalEnvironment: true,
                );
              }
            : null,
        onEditingComplete: args[0]["onEditingComplete"] != null
            ? () {
                Closure closure = args[0]["onEditingComplete"];
                closure.dispatch(
                  [],
                  parentState: luaState,
                  resetEnclosingLexicalEnvironment: true,
                );
              }
            : null,
        onSubmitted: args[0]["onSubmitted"] != null
            ? (String val) {
                Closure closure = args[0]["onSubmitted"];
                closure.dispatch(
                  [val],
                  parentState: luaState,
                  resetEnclosingLexicalEnvironment: true,
                );
              }
            : null,
        enabled: args[0]["enabled"],
        cursorWidth: args[0]["cursorWidth"]?.toDouble(),
        cursorRadius: args[0]["cursorRadius"],
        cursorColor: maybeUnBoxAndBuildArgument<Color>(args[0]["cursorColor"],
            parentState: luaState),
        selectionHeightStyle: maybeUnBoxEnum(
            values: BoxHeightStyle.values,
            boxedEnum: args[0]["selectionHeightStyle"]),
        selectionWidthStyle: maybeUnBoxEnum(
            values: BoxWidthStyle.values,
            boxedEnum: args[0]["selectionWidthStyle"]),
        keyboardAppearance: maybeUnBoxEnum(
            values: Brightness.values,
            boxedEnum: args[0]["keyboardAppearance"]),
        scrollPadding: maybeUnBoxAndBuildArgument<EdgeInsets>(
            args[0]["scrollPadding"],
            parentState: luaState),
        dragStartBehavior: maybeUnBoxEnum(
            values: DragStartBehavior.values,
            boxedEnum: args[0]["dragStartBehavior"]),
        enableInteractiveSelection: args[0]["enableInteractiveSelection"],
        onTap: args[0]["onTap"] != null
            ? () {
                Closure closure = args[0]["onTap"];
                closure.dispatch(
                  [],
                  parentState: luaState,
                  resetEnclosingLexicalEnvironment: true,
                );
              }
            : null,
        scrollPhysics: maybeUnBoxAndBuildArgument<ScrollPhysics>(
            args[0]["scrollPhysics"],
            parentState: luaState),
        autofillHints: maybeUnBoxAndBuildArgument<String>(
            args[0]["autofillHints"],
            parentState: luaState),
      )
    ];
  });
}
