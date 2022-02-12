import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformSixteenthHashName.dart';
import 'package:hydro_sdk/swid/ir/swidElementReferenceInfo.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'rewriteReferencesInInterface.freezed.dart';

@freezed
class RewriteReferencesInInterface
    with
        _$RewriteReferencesInInterface,
        HashKeyMixin<RewriteReferencesInInterface>,
        HashComparableMixin<RewriteReferencesInInterface>,
        SwarsTransformMixin<
            RewriteReferencesInInterface,
            $RewriteReferencesInInterfaceCopyWith<RewriteReferencesInInterface>,
            SwidInterface>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  RewriteReferencesInInterface._();

  factory RewriteReferencesInInterface({
    required final SwidInterface swidInterface,
  }) = _$RewriteReferencesInInterfaceCtor;

  @override
  String get cacheGroup => "rewriteReferencesInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidInterface.hashKey.hashableParts;
  }

  @override
  RewriteReferencesInInterface clone({
    final SwidInterface? swidInterface,
  }) =>
      RewriteReferencesInInterface(
        swidInterface: swidInterface ?? this.swidInterface,
      );

  String? _rewrite<T extends ISwidElementReferenceInfo>({
    required final T swidElementReferenceInfo,
    required final SwidInterface swidInterface,
    required final ISwarsPipeline pipeline,
  }) =>
      Tuple2(
        swidElementReferenceInfo.isShadowingParent,
        swidElementReferenceInfo.isClassReference,
      ).let(
        (it) => when(
          it,
          {
            Tuple2(true, false): () => pipeline.reduceFromTerm(
                  TransformSixteenthHashName(
                    swidType: SwidType.fromSwidInterface(
                      swidInterface: swidInterface,
                    ),
                  ),
                ),
            Tuple2(false, true): () => [
                  "I",
                  removeNullabilitySuffix(
                    str: swidInterface.name,
                  )
                ].join(),
            Tuple2(true, true): () => pipeline.reduceFromTerm(
                  TransformSixteenthHashName(
                    swidType: SwidType.fromSwidInterface(
                      swidInterface: swidInterface.clone(
                        name: [
                          "I",
                          removeNullabilitySuffix(
                            str: swidInterface.name,
                          )
                        ].join(),
                      ),
                    ),
                  ),
                ),
          },
        ),
      );

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidInterface.clone(
            name: swidInterface.element?.let(
              (it) => it.when(
                fromSwidTypeArgumentElement: (_) => swidInterface.name,
                fromSwidInterfaceElement: (val) =>
                    _rewrite(
                      swidElementReferenceInfo: val,
                      swidInterface: swidInterface,
                      pipeline: pipeline,
                    ) ??
                    swidInterface.name,
                fromSwidClassElement: (val) =>
                    _rewrite(
                      swidElementReferenceInfo: val,
                      swidInterface: swidInterface,
                      pipeline: pipeline,
                    ) ??
                    swidInterface.name,
              ),
            ),
            typeArguments: swidInterface.typeArguments
                .map(
                  (x) => x.clone(
                    type: pipeline.reduceFromTerm(
                      RewriteReferences(
                        swidType: x.type,
                      ),
                    ),
                  ),
                )
                .toList()),
      );
}
