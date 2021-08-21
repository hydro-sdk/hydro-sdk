import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadTextFormField(
    {required HydroState luaState, required HydroTable table}) {
  table["textFormField"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextFormField(
          key: maybeUnBoxAndBuildArgument<Key, dynamic>(args[0]["key"],
              parentState: luaState),
          controller: maybeUnBoxAndBuildArgument<TextEditingController, dynamic>(
              args[0]["controller"],
              parentState: luaState),
          initialValue: args[0]["initialValue"],
          decoration: maybeUnBoxAndBuildArgument<InputDecoration, dynamic>(
              args[0]["decoration"],
              parentState: luaState),
          textCapitalization: maybeUnBoxEnum(
              values: TextCapitalization.values,
              boxedEnum: args[0]["textCapitalization"]),
          textInputAction: maybeUnBoxEnum(
              values: TextInputAction.values,
              boxedEnum: args[0]["textInputAction"]),
          style: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(args[0]["style"],
              parentState: luaState),
          strutStyle: maybeUnBoxAndBuildArgument<StrutStyle, dynamic>(
              args[0]["strutStyle"],
              parentState: luaState),
          textDirection: maybeUnBoxEnum(
              values: TextDirection.values,
              boxedEnum: args[0]["textDirection"]),
          textAlign: maybeUnBoxEnum(
              values: TextAlign.values, boxedEnum: args[0]["textAlign"]),
          textAlignVertical:
              maybeUnBoxAndBuildArgument<TextAlignVertical, dynamic>(args[0]["textAlignVertical"], parentState: luaState),
          autofocus: args[0]["autofocus"],
          readOnly: args[0]["readOnly"],
          toolbarOptions: maybeUnBoxAndBuildArgument<ToolbarOptions, dynamic>(args[0]["toolbarOptions"], parentState: luaState),
          showCursor: args[0]["showCursor"],
          obscureText: args[0]["obscureText"],
          autocorrect: args[0]["autocorrect"],
          smartDashesType: maybeUnBoxEnum(values: SmartDashesType.values, boxedEnum: args[0]["smartDashesType"]),
          smartQuotesType: maybeUnBoxEnum(values: SmartQuotesType.values, boxedEnum: args[0]["smartQuotesType"]),
          autovalidate: args[0]["autovalidate"],
          maxLengthEnforced: args[0]["maxLengthEnforced"],
          maxLines: args[0]["maxLines"],
          expands: args[0]["expands"],
          maxLength: args[0]["maxLength"],
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
          onFieldSubmitted: args[0]["onFieldSubmitted"] != null
              ? (String val) {
                  Closure closure = args[0]["onFieldSubmitted"];
                  closure.dispatch(
                    [val],
                    parentState: luaState,
                    resetEnclosingLexicalEnvironment: true,
                  );
                }
              : null,
          onSaved: args[0]["onSaved"] != null
              ? (String? val) {
                  Closure closure = args[0]["onSaved"];
                  closure.dispatch(
                    [val],
                    parentState: luaState,
                    resetEnclosingLexicalEnvironment: true,
                  );
                }
              : null,
          validator: args[0]["validator"] != null
              ? (String? val) {
                  Closure closure = args[0]["validator"];
                  return closure.dispatch(
                    [val],
                    parentState: luaState,
                    resetEnclosingLexicalEnvironment: true,
                  )[0];
                }
              : null,
          enabled: args[0]["enabled"],
          cursorWidth: args[0]["cursorWidth"]?.toDouble(),
          cursorRadius: args[0]["cursorRadius"],
          cursorColor: maybeUnBoxAndBuildArgument<Color, dynamic>(args[0]["cursorColor"], parentState: luaState),
          keyboardAppearance: maybeUnBoxEnum(values: Brightness.values, boxedEnum: args[0]["keyboardAppearance"]),
          scrollPadding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(args[0]["scrollPadding"], parentState: luaState),
          enableInteractiveSelection: args[0]["enableInteractiveSelection"],
          buildCounter: args[0]["buildCounter"] != null
              ? (
                  BuildContext context, {
                  int? currentLength,
                  int? maxLength,
                  bool? isFocused,
                }) {
                  HydroTable props = HydroTable();
                  props["currentLength"] = currentLength;
                  props["maxLength"] = maxLength;
                  props["isFocused"] = isFocused;

                  Closure closure = args[0]["buildCounter"];
                  return closure.dispatch([
                    maybeBoxObject(
                        object: context,
                        hydroState: luaState,
                        table: HydroTable()),
                    props
                  ], parentState: luaState)[0];
                }
              : null)
    ];
  });
}
