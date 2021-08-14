import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/byteConversionSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/chunkedConversionSink.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadconvert({required HydroState hydroState, required HydroTable table}) {
  final convert = HydroTable();
  table['convert'] = convert;
  loadByteConversionSink(table: convert, hydroState: hydroState);
  loadChunkedConversionSink(table: convert, hydroState: hydroState);
}
