import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/capability.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/isolate.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/isolateSpawnException.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/rawReceivePort.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/receivePort.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/remoteError.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/sendPort.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/isolate/transferableTypedData.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadisolate({required HydroState hydroState, required HydroTable table}) {
  final isolate = HydroTable();
  table['isolate'] = isolate;
  loadIsolateSpawnException(table: isolate, hydroState: hydroState);
  loadIsolate(table: isolate, hydroState: hydroState);
  loadSendPort(table: isolate, hydroState: hydroState);
  loadReceivePort(table: isolate, hydroState: hydroState);
  loadRawReceivePort(table: isolate, hydroState: hydroState);
  loadRemoteError(table: isolate, hydroState: hydroState);
  loadTransferableTypedData(table: isolate, hydroState: hydroState);
  loadCapability(table: isolate, hydroState: hydroState);
}
