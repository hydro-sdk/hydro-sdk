import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

mixin IrTermListResultMixin<T extends Object, U extends Object,
    V extends SwidType> on ISwarsTerm<T, U, List<V>> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<List<V>> deserializeTermResult(final String content) =>
      json.decode(content).map((x) => SwidType.fromJson(x)).toList().cast<T>();
}
