import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/codec.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/converter.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/encoding.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadconvert({required HydroState hydroState, required HydroTable table}) {
  final convert = HydroTable();
  table['convert'] = convert;
  loadConverter(table: convert, hydroState: hydroState);
  loadCodec(table: convert, hydroState: hydroState);
  loadEncoding(table: convert, hydroState: hydroState);
}
