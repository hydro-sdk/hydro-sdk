import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

void reassemble({@required Prototype destination, @required Prototype source}) {
  destination = source;
}
