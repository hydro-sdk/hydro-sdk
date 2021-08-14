import 'package:hydro_sdk/cfr/builtins/libs/dart/async/eventSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/future.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamSubscription.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadasync({required HydroState hydroState, required HydroTable table}) {
  final async = HydroTable();
  table['async'] = async;
  loadStreamSubscription(table: async, hydroState: hydroState);
  loadEventSink(table: async, hydroState: hydroState);
  loadFuture(table: async, hydroState: hydroState);
}
