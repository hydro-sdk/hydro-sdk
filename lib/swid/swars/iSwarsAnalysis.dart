import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';

@immutable
@optionalTypeArgs
abstract class ISwarsAnalysis<T extends Object, U extends Object,
    V extends Object> implements ISwarsTerm<T, U, V> {
  const ISwarsAnalysis();

  V analyze({
    required covariant final ISwarsPipeline<dynamic>? pipeline,
  });
}
