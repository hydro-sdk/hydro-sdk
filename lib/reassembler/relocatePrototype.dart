import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

void relocatePrototype(
    {@required Prototype destination, @required Prototype source}) {
  destination.lineStart = source.lineStart;
}
