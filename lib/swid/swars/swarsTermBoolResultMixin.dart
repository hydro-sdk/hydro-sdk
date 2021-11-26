import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

mixin SwarsTermBoolResultMixin<T extends Object, U extends Object>
    on ISwarsTerm<T, U, bool> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<bool> deserializeTermResult(final String content) =>
      SwarsTermResult.fromBool(
        content.trim() == "true" ? true : false,
      );
}
