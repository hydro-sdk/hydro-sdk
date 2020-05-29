import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

class LasmStub extends Prototype {
  Prototype parent;
  LasmStub(CodeDump root, {@required this.parent}) : super(root);
}
