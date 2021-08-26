import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

@immutable
@optionalTypeArgs
abstract class ISwarsTransform<T extends Object, U extends Object,
    V extends Object> implements ISwarsTerm<T, U, V> {
  const ISwarsTransform();

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  V transform({
    required covariant final ISwarsPipeline<dynamic> pipeline,
  });
}
