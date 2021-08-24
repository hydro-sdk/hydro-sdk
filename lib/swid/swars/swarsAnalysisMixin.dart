import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsAnalysis.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

@immutable
@optionalTypeArgs
mixin SwarsAnalysisMixin<T extends Object, U extends Object, V extends Object>
    implements ISwarsAnalysis<T, U, V> {
  @nonVirtual
  @override
  V call({
    required covariant final ISwarsPipeline<dynamic> pipeline,
  }) =>
      analyze(
        pipeline: pipeline,
      );
}
