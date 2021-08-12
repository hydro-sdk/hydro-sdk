import 'package:hydro_sdk/cfr/builtins/libs/dart/async/eventSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/multiStreamController.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/stream.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamConsumer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamController.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamSubscription.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamTransformer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/async/streamTransformerBase.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadasync({required HydroState hydroState, required HydroTable table}) {
  final async = HydroTable();
  table['async'] = async;
  loadStreamController(table: async, hydroState: hydroState);
  loadStream(table: async, hydroState: hydroState);
  loadStreamSubscription(table: async, hydroState: hydroState);
  loadEventSink(table: async, hydroState: hydroState);
  loadStreamConsumer(table: async, hydroState: hydroState);
  loadStreamSink(table: async, hydroState: hydroState);
  loadStreamTransformer(table: async, hydroState: hydroState);
  loadStreamTransformerBase(table: async, hydroState: hydroState);
  loadMultiStreamController(table: async, hydroState: hydroState);
}
