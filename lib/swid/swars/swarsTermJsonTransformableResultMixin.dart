import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

abstract class ISwarsTermJsonTransformableResult<
    T extends Object,
    U extends Object,
    V extends IJsonTransformable> implements ISwarsTerm<T, U, V> {
  const ISwarsTermJsonTransformableResult();

  V termResultDeserializer(covariant final Map<String, dynamic> json);
}

mixin SwarsTermJsonTransformableResultMixin<T extends Object, U extends Object,
        V extends IJsonTransformable> on ISwarsTerm<T, U, V>
    implements ISwarsTermJsonTransformableResult<T, U, V> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<V> deserializeTermResult(final String content) =>
      SwarsTermResult.fromJsonTransformable(
          termResultDeserializer(json.decode(content)));
}
