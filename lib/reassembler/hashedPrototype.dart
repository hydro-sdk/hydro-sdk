import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

class HashedPrototype {
  final String hash;
  final String hashWithoutSourceInformation;
  final Prototype prototype;

  HashedPrototype(
      {@required this.hash,
      @required this.hashWithoutSourceInformation,
      @required this.prototype});
}
