import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeFormalToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeFormalsToLowestBound.freezed.dart';

@freezed
class InstantiateTypeFormalsToLowestBound
    with
        _$InstantiateTypeFormalsToLowestBound,
        HashKeyMixin<InstantiateTypeFormalsToLowestBound>,
        HashComparableMixin<InstantiateTypeFormalsToLowestBound>,
        SwarsTransformMixin<
            InstantiateTypeFormalsToLowestBound,
            $InstantiateTypeFormalsToLowestBoundCopyWith<
                InstantiateTypeFormalsToLowestBound>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateTypeFormalsToLowestBound._();

  factory InstantiateTypeFormalsToLowestBound({
    required final SwidType swidType,
  }) = _$InstantiateTypeFormalsToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateTypeFormalsToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  InstantiateTypeFormalsToLowestBound clone({
    final SwidType? swidType,
  }) =>
      InstantiateTypeFormalsToLowestBound(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: val,
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: val.clone(
              typeFormals: val.typeFormals
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeFormalToLowestBound(
                        swidTypeFormal: x,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: val,
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: val.clone(
              typeFormals: val.typeFormals
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeFormalToLowestBound(
                        swidTypeFormal: x,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );
}
