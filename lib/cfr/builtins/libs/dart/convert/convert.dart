import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/byteConversionSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/chunkedConversionSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/closableStringSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/codec.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/converter.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/encoding.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/stringConversionSink.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/utf8Codec.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/utf8Decoder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/utf8Encoder.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadconvert({required HydroState hydroState, required HydroTable table}) {
  final convert = HydroTable();
  table['convert'] = convert;
  loadByteConversionSink(table: convert, hydroState: hydroState);
  loadUtf8Codec(table: convert, hydroState: hydroState);
  loadUtf8Encoder(table: convert, hydroState: hydroState);
  loadUtf8Decoder(table: convert, hydroState: hydroState);
  loadStringConversionSink(table: convert, hydroState: hydroState);
  loadClosableStringSink(table: convert, hydroState: hydroState);
  loadConverter(table: convert, hydroState: hydroState);
  loadChunkedConversionSink(table: convert, hydroState: hydroState);
  loadCodec(table: convert, hydroState: hydroState);
  loadEncoding(table: convert, hydroState: hydroState);
}
