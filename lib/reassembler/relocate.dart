import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

void relocate({@required Prototype destination, @required Prototype source}) {
  destination = source;
}
