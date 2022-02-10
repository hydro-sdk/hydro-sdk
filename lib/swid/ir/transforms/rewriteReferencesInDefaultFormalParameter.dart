import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidDefaultFormalParameterMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'rewriteReferencesInDefaultFormalParameter.freezed.dart';

@freezed
class RewriteReferencesInDefaultFormalParameter
    with
        _$RewriteReferencesInDefaultFormalParameter,
        HashKeyMixin<RewriteReferencesInDefaultFormalParameter>,
        HashComparableMixin<RewriteReferencesInDefaultFormalParameter>,
        SwarsTransformMixin<
            RewriteReferencesInDefaultFormalParameter,
            $RewriteReferencesInDefaultFormalParameterCopyWith<
                RewriteReferencesInDefaultFormalParameter>,
            SwidDefaultFormalParameter>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidDefaultFormalParameterResultMixin {
  RewriteReferencesInDefaultFormalParameter._();

  factory RewriteReferencesInDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
  }) = _$RewriteReferencesInDefaultFormalParameterCtor;

  @override
  String get cacheGroup => "RewriteReferencesInDefaultFormalParameter";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidDefaultFormalParameter.hashKey.hashableParts;
  }

  @override
  RewriteReferencesInDefaultFormalParameter clone({
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
  }) =>
      RewriteReferencesInDefaultFormalParameter(
        swidDefaultFormalParameter:
            swidDefaultFormalParameter ?? this.swidDefaultFormalParameter,
      );

  @override
  ISwarsTermResult<SwidDefaultFormalParameter> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidDefaultFormalParameter.clone(
          staticType: pipeline.reduceFromTerm(
            RewriteReferences(
              swidType: swidDefaultFormalParameter.staticType,
            ),
          ),
        ),
      );
}
