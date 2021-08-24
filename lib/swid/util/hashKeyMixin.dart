import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
mixin HashKeyMixin<T extends Object> implements IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  late final hashKey = hashCode;
}
