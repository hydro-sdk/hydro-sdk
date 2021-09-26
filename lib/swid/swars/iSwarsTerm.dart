import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iHashComparable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
abstract class ISwarsTerm<T extends Object, U extends Object, V extends Object>
    implements ICloneable<T>, ICopyable<T, U>, IHashKey, IHashComparable {
  final String cacheGroup;

  const ISwarsTerm({
    required final this.cacheGroup,
  });

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<V> call({
    required covariant final ISwarsPipeline<dynamic> pipeline,
  });

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<V> deserializeTermResult(final String content);
}
