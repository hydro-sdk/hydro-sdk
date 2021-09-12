import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

@immutable
@optionalTypeArgs
mixin SwarsNonUniqueTermMixin<T extends Object, U extends Object,
    V extends Object> on UnhashableMixin<T> implements ISwarsTerm<T, U, V> {
  @override
  String get cacheGroup => "";
}
