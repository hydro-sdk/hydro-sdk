import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashComparable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
mixin HashComparableMixin<T extends Object> on HashKeyMixin<T>
    implements IHashComparable, IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  bool hashCompare(covariant final HashComparableMixin<T> other) =>
      hashKey == other.hashKey;
}
