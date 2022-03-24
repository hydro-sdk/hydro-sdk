import 'package:hydro_sdk/cfr/builtins/libs/flutter/scheduler/priority.dart'
    as _867b;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/scheduler/ticker.dart'
    as _a96c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/scheduler/tickerCanceled.dart'
    as _5819;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/scheduler/tickerFuture.dart'
    as _71bf;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/scheduler/tickerProvider.dart'
    as _23a8;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadscheduler(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final loadscheduler = _36c2.HydroTable();
  table['loadscheduler'] = loadscheduler;
  _23a8.loadTickerProvider(table: loadscheduler, hydroState: hydroState);
  _a96c.loadTicker(table: loadscheduler, hydroState: hydroState);
  _71bf.loadTickerFuture(table: loadscheduler, hydroState: hydroState);
  _5819.loadTickerCanceled(table: loadscheduler, hydroState: hydroState);
  _867b.loadPriority(table: loadscheduler, hydroState: hydroState);
}
