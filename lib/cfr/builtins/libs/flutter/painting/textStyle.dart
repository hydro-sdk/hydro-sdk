import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:flutter/material.dart';

class VMManagedTextStyle extends VMManagedBox<TextStyle> {
  final HydroTable table;
  final TextStyle vmObject;
  final HydroState hydroState;

  VMManagedTextStyle(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table["copyWith"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.copyWith(
              color: maybeUnBoxAndBuildArgument<Color>(args[1]["color"],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable(),
        ),
      ];
    });
    table["apply"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<TextStyle>(
          object: vmObject.apply(
              color: maybeUnBoxAndBuildArgument<Color>(args[1]["color"],
                  parentState: hydroState),
              fontWeightDelta: args[1]["fontWeightDelta"] != null
                  ? args[1]["fontWeightDelta"]
                  : 0),
          hydroState: hydroState,
          table: HydroTable(),
        ),
      ];
    });
  }
}

void loadTextStyle(
    {@required HydroState luaState, @required HydroTable table}) {
  registerBoxer(
      boxer: ({TextStyle vmObject, HydroState hydroState, HydroTable table}) {
    return VMManagedTextStyle(
      vmObject: vmObject,
      hydroState: hydroState,
      table: table,
    );
  });

  table["textStyle"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      TextStyle(
        inherit: args[0]["inherit"],
        color: maybeUnBoxAndBuildArgument<Color>(args[0]["color"],
            parentState: luaState),
        backgroundColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["backgroundColor"],
            parentState: luaState),
        fontSize: args[0]["fontSize"]?.toDouble(),
        fontWeight: maybeUnBoxAndBuildArgument<FontWeight>(
            args[0]["fontWeight"],
            parentState: luaState),
        fontStyle: maybeUnBoxEnum(
          values: FontStyle.values,
          boxedEnum: args[0]["fontStyle"],
        ),
        letterSpacing: args[0]["letterSpacing"],
        wordSpacing: args[0]["wordSpacing"],
        textBaseline: maybeUnBoxEnum(
          values: TextBaseline.values,
          boxedEnum: args[0]["textBaseline"],
        ),
        height: args[0]["height"],
        decorationColor: maybeUnBoxAndBuildArgument<Color>(
            args[0]["decorationColor"],
            parentState: luaState),
        decorationStyle: maybeUnBoxEnum(
          values: TextDecorationStyle.values,
          boxedEnum: args[0]["decorationStyle"],
        ),
        decorationThickness: args[0]["decorationThickness"],
        debugLabel: args[0]["debugLabel"],
      )
    ];
  });
}
