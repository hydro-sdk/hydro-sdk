import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDuration extends Duration implements Box<Duration> {
  final HydroTable? table;
  final HydroState hydroState;

  VMManagedDuration({
    required this.table,
    required this.hydroState,
    required int days,
    required int hours,
    required int minutes,
    required int seconds,
    required int milliseconds,
    required int microseconds,
  }) : super(
            days: days,
            hours: hours,
            minutes: minutes,
            seconds: seconds,
            milliseconds: milliseconds,
            microseconds: microseconds) {
    table!["vmObject"] = vmObject;
    table!["unwrap"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table!["_dart_getInDays"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [inDays];
    });
    table!["_dart_getInHours"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [inHours];
    });
    table!["_dart_getInMinutes"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [inMinutes];
    });
    table!["_dart_getInSeconds"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [inSeconds];
    });
    table!["_dart_getInMilliseconds"] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [inMilliseconds];
    });
    table!["_dart_getInMicroseconds"] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [inMicroseconds];
    });
    table!["_dart_compareTo"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.compareTo(args[1])];
    });
    table!["_dart_toString"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.toString()];
    });
    table!["_dart_getIsNegative"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [isNegative];
    });
    table!["_dart_abs"] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [abs];
    });

    @override
    int? compareTo(Duration other) {
      Closure closure = table!["compareTo"];
      return closure.dispatch([
        table,
        maybeBoxObject<Duration>(
          table: HydroTable(),
          object: other,
          hydroState: hydroState,
        ),
      ], parentState: hydroState)[0];
    }

    @override
    String? toString() {
      Closure closure = table!["toString"];
      return closure.dispatch([table], parentState: hydroState)[0];
    }
  }

  Duration unwrap() => this;
  Duration get vmObject => this;
}

void loadDuration({
  required HydroState hydroState,
  required HydroTable table,
}) {
  table["duration"] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      VMManagedDuration(
        table: args[0],
        hydroState: hydroState,
        days: args[1]["days"],
        hours: args[1]["hours"],
        minutes: args[1]["minutes"],
        seconds: args[1]["seconds"],
        milliseconds: args[1]["milliseconds"],
        microseconds: args[1]["microseconds"],
      )
    ];
  });
}
