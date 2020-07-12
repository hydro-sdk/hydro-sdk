import 'package:hydro_sdk/cfr/builtins/libs/dart/dart.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/flutter.dart';
import 'package:hydro_sdk/cfr/builtins/libs/hydro/hydro.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/base.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/bit.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/bit32.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/math.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/string.dart';
import 'package:hydro_sdk/cfr/builtins/libs/stdlib/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

enum BuiltinLib { base, math, string, bit, table, bit32, flutter, dart, hydro }

void loadBuiltins(
    {@required HydroState hydroState,
    List<BuiltinLib> builtins = const [
      BuiltinLib.base,
      BuiltinLib.math,
      BuiltinLib.string,
      BuiltinLib.bit,
      BuiltinLib.table,
      BuiltinLib.bit32,
      BuiltinLib.flutter,
      BuiltinLib.dart,
      BuiltinLib.hydro,
    ]}) {
  builtins.forEach((lib) {
    switch (lib) {
      case BuiltinLib.base:
        loadBaseLib(hydroState.context);
        break;
      case BuiltinLib.math:
        loadMathLib(hydroState.context);
        break;
      case BuiltinLib.string:
        loadStringLib(hydroState.context);
        break;
      case BuiltinLib.bit:
        loadBitLib(hydroState.context);
        break;
      case BuiltinLib.table:
        loadTableLib(hydroState.context);
        break;
      case BuiltinLib.bit32:
        loadBit32Lib(hydroState.context);
        break;
      case BuiltinLib.flutter:
        loadFlutterLib(luaState: hydroState, ctx: hydroState.context);
        break;
      case BuiltinLib.dart:
        loadDartLib(hydroState: hydroState, ctx: hydroState.context);
        break;
      case BuiltinLib.hydro:
        loadHydroLib(hydroState.context);
        break;
    }
  });
}
