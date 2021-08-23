import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/iSwarsTransform.dart';
import 'package:meta/meta.dart';

@immutable
@optionalTypeArgs
mixin SwarsTransformMixin<T extends Object, U extends Object, V extends Object>
    implements ISwarsTransform<T, U, V> {
  @nonVirtual
  @override
  V call({
    required covariant final ISwarsPipeline<dynamic>? pipeline,
  }) =>
      transform(
        pipeline: pipeline,
      );
}
