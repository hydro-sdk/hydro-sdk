import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

typedef Prototype NativeThunk({
  required CodeDump codeDump,
  required Prototype parent,
});
