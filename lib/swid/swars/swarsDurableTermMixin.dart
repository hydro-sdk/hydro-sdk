import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResultPersistenceKind.dart';

mixin SwarsDurableTermMixin<T extends Object, U extends Object,
    V extends Object> on ISwarsTerm<T, U, V> {
  @override
  @nonVirtual
  SwarsTermResultPersistenceKind get termResultPersistenceKind =>
      SwarsTermResultPersistenceKind.kDurable;
}
