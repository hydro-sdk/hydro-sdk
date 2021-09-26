import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

mixin SwarsTermStringResultMixin<T extends Object, U extends Object>
    on ISwarsTerm<T, U, String> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<String> deserializeTermResult(final String content) =>
      SwarsTermResult.fromString(content);
}
