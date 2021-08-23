import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
import 'package:meta/meta.dart';

@immutable
@optionalTypeArgs
abstract class ISwarsAnalysis<T extends Object, U extends Object,
    V extends Object> implements ISwarsTerm<T, U, V> {
  const ISwarsAnalysis();

  V analyze({
    required covariant final ISwarsPipeline<dynamic>? pipeline,
  });
}
