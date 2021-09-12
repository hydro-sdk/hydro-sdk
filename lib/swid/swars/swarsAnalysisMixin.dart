import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsAnalysis.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';

@immutable
@optionalTypeArgs
mixin SwarsAnalysisMixin<T extends Object, U extends Object, V extends Object>
    implements ISwarsAnalysis<T, U, V> {
  @nonVirtual
  @override
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  ISwarsTermResult<V> call({
    required covariant final ISwarsPipeline<dynamic> pipeline,
  }) =>
      analyze(
        pipeline: pipeline,
      );
}
