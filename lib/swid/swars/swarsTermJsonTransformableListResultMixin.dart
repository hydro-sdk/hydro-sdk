import 'dart:convert';

import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

abstract class ISwarsTermJsonTransformableListResultMixin<
    T extends Object,
    U extends Object,
    V extends IJsonTransformable> implements ISwarsTerm<T, U, List<V>> {
  const ISwarsTermJsonTransformableListResultMixin();

  V termResultDeserializer(covariant final Map<String, dynamic> json);
}

mixin SwarsTermJsonTransformableListResultMixin<
        T extends Object,
        U extends Object,
        V extends IJsonTransformable> on ISwarsTerm<T, U, List<V>>
    implements ISwarsTermJsonTransformableListResultMixin<T, U, V> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<V> deserializeTermResult(final String content) => json
      .decode(content)
      .map((x) => termResultDeserializer(x))
      .toList()
      .cast<T>();
}
