import 'package:hydro_sdk/cfr/decode/flavor.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

class CodeDump {
  String? name;
  int? versionMajor;
  int? versionMinor;
  int? implementation;
  late bool littleEndian;
  bool get bigEndian => !littleEndian;
  int? intSize;
  int? ptrSize;
  int? instSize;
  int? numSize;
  late bool useInt;
  Prototype? main;
  Flavor? flavor;
}
