import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

mixin InterfaceTermListResultMixin<T extends Object, U extends Object,
    V extends SwidInterface> on ISwarsTerm<T, U, List<V>> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<List<V>> deserializeTermResult(final String content) => json
      .decode(content)
      .map((x) => SwidInterface.fromJson(x))
      .toList()
      .cast<T>();
}
