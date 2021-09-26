import 'package:hydro_sdk/cfr/vm/prototype.dart';

class HashedPrototype {
  final String? hash;
  final String hashWithoutSourceInformation;
  final Prototype prototype;

  const HashedPrototype({
    required this.hash,
    required this.hashWithoutSourceInformation,
    required this.prototype,
  });

  @override
  bool operator ==(o) =>
      o is HashedPrototype &&
      (o.hash ?? o.hashWithoutSourceInformation) ==
          (hash ?? hashWithoutSourceInformation);

  @override
  int get hashCode => (hash?.hashCode ?? hashWithoutSourceInformation.hashCode);
}
