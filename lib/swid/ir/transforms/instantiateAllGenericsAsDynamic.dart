import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAs.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateAllGenericsAsDynamic.freezed.dart';

@freezed
class InstantiateAllGenericsAsDynamic
    with
        _$InstantiateAllGenericsAsDynamic,
        HashKeyMixin<InstantiateAllGenericsAsDynamic>,
        HashComparableMixin<InstantiateAllGenericsAsDynamic>,
        SwarsTransformMixin<
            InstantiateAllGenericsAsDynamic,
            $InstantiateAllGenericsAsDynamicCopyWith<
                InstantiateAllGenericsAsDynamic>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateAllGenericsAsDynamic._();

  factory InstantiateAllGenericsAsDynamic({
    required final SwidType swidType,
    @Default(false) final bool instantiateNormalParameterTypes,
  }) = _$InstantiateAllGenericsAsDynamicCtor;

  @override
  String get cacheGroup => "instantiateAllGenericsAsDynamic";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield [
      ...instantiateNormalParameterTypes.hashableParts,
    ];
  }

  @override
  InstantiateAllGenericsAsDynamic clone({
    final SwidType? swidType,
    final bool? instantiateNormalParameterTypes,
  }) =>
      InstantiateAllGenericsAsDynamic(
        swidType: swidType ?? this.swidType,
        instantiateNormalParameterTypes: instantiateNormalParameterTypes ??
            this.instantiateNormalParameterTypes,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        pipeline.reduceFromTerm(
          InstantiateAllGenericsAs(
            swidType: swidType,
            instantiateNormalParameterTypes: instantiateNormalParameterTypes,
            instantiatedGeneric:
                SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
              swidInstantiableGeneric:
                  SwidInstantiableGeneric.fromSwidInterface(
                swidInterface: dartDynamic,
              ),
            ),
          ),
        ),
      );
}
