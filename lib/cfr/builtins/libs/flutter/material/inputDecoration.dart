import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadInputDecoration(
    {required HydroState luaState, required HydroTable table}) {
  table["inputDecoration"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      InputDecoration(
        icon: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["icon"],
            parentState: luaState),
        labelText: args[0]["labelText"],
        labelStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["labelStyle"],
            parentState: luaState),
        helperText: args[0]["helperText"],
        helperStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["helperStyle"],
            parentState: luaState),
        helperMaxLines: args[0]["helperMaxLines"],
        hintText: args[0]["hintText"],
        hintStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["hintStyle"],
            parentState: luaState),
        hintMaxLines: args[0]["hintMaxLines"],
        errorText: args[0]["errorText"],
        errorStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["errorStyle"],
            parentState: luaState),
        errorMaxLines: args[0]["errorMaxLines"],
        floatingLabelBehavior: maybeUnBoxEnum(
            values: FloatingLabelBehavior.values,
            boxedEnum: args[0]["floatingLabelBehavior"]),
        isDense: args[0]["isDense"],
        contentPadding: maybeUnBoxAndBuildArgument<EdgeInsets, dynamic>(
            args[0]["contentPadding"],
            parentState: luaState),
        prefixIcon: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["prefixIcon"],
            parentState: luaState),
        prefixIconConstraints:
            maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                args[0]["prefixIconConstraints"],
                parentState: luaState),
        prefix: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["prefix"],
            parentState: luaState),
        prefixText: args[0]["prefixText"],
        prefixStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["prefixStyle"],
            parentState: luaState),
        suffixIcon: maybeUnBoxAndBuildArgument<Widget, dynamic>(
            args[0]["suffixIcon"],
            parentState: luaState),
        suffix: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["suffix"],
            parentState: luaState),
        suffixText: args[0]["suffixText"],
        suffixStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["suffixStyle"],
            parentState: luaState),
        suffixIconConstraints:
            maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                args[0]["suffixIconConstraints"],
                parentState: luaState),
        counter: maybeUnBoxAndBuildArgument<Widget, dynamic>(args[0]["counter"],
            parentState: luaState),
        counterText: args[0]["counterText"],
        counterStyle: maybeUnBoxAndBuildArgument<TextStyle, dynamic>(
            args[0]["counterStyle"],
            parentState: luaState),
        filled: args[0]["filled"],
        fillColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["filledColor"],
            parentState: luaState),
        focusColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["focusColor"],
            parentState: luaState),
        hoverColor: maybeUnBoxAndBuildArgument<Color, dynamic>(
            args[0]["hoverColor"],
            parentState: luaState),
        errorBorder: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["errorBorder"],
            parentState: luaState),
        focusedBorder: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["focusedBorder"],
            parentState: luaState),
        focusedErrorBorder: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["focusedErrorBorder"],
            parentState: luaState),
        disabledBorder: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["disabledBorder"],
            parentState: luaState),
        enabledBorder: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["enabledBorder"],
            parentState: luaState),
        border: maybeUnBoxAndBuildArgument<InputBorder, dynamic>(
            args[0]["border"],
            parentState: luaState),
        enabled: args[0]["enabled"],
        semanticCounterText: args[0]["semanticCounterText"],
        alignLabelWithHint: args[0]["alignLabelWithHint"],
      )
    ];
  });
}
