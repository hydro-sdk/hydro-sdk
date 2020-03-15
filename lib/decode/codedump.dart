import 'package:flua/flavor.dart';
import 'package:flua/prototype.dart';

class CodeDump {
  String name;
  int versionMajor;
  int versionMinor;
  int implementation;
  bool littleEndian;
  bool get bigEndian => !littleEndian;
  int intSize;
  int ptrSize;
  int instSize;
  int numSize;
  bool useInt;
  Prototype main;
  Flavor flavor;
}
