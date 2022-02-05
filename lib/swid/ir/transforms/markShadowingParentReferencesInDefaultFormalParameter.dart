import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidDefaultFormalParameterMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferencesInDefaultFormalParameter.freezed.dart';

@freezed
class MarkShadowingParentReferencesInDefaultFormalParameter
    with
        _$MarkShadowingParentReferencesInDefaultFormalParameter,
        HashKeyMixin<MarkShadowingParentReferencesInDefaultFormalParameter>,
        HashComparableMixin<
            MarkShadowingParentReferencesInDefaultFormalParameter>,
        SwarsTransformMixin<
            MarkShadowingParentReferencesInDefaultFormalParameter,
            $MarkShadowingParentReferencesInDefaultFormalParameterCopyWith<
                MarkShadowingParentReferencesInDefaultFormalParameter>,
            SwidDefaultFormalParameter>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidDefaultFormalParameterResultMixin {
  MarkShadowingParentReferencesInDefaultFormalParameter._();

  factory MarkShadowingParentReferencesInDefaultFormalParameter({
    required final SwidClass parent,
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
  }) = _$MarkShadowingParentReferencesInDefaultFormalParameterCtor;

  @override
  String get cacheGroup =>
      "markShadowingParentReferencesInDefaultFormalParameter";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* swidDefaultFormalParameter.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferencesInDefaultFormalParameter clone({
    final SwidClass? parent,
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
  }) =>
      MarkShadowingParentReferencesInDefaultFormalParameter(
        parent: parent ?? this.parent,
        swidDefaultFormalParameter:
            swidDefaultFormalParameter ?? this.swidDefaultFormalParameter,
      );

  @override
  ISwarsTermResult<SwidDefaultFormalParameter> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidDefaultFormalParameter.clone(
          staticType: swidDefaultFormalParameter.staticType.when(
            fromSwidInterface: (val) => SwidType.fromSwidInterface(
              swidInterface: pipeline.reduceFromTerm(
                MarkShadowingParentReferencesInInterface(
                  parent: parent,
                  swidInterface: val,
                ),
              ),
            ),
            fromSwidClass: (val) => SwidType.fromSwidClass(
              swidClass: pipeline.reduceFromTerm(
                MarkShadowingParentReferencesInClass(
                  parent: parent,
                  swidClass: val,
                ),
              ),
            ),
            fromSwidDefaultFormalParameter: (val) =>
                SwidType.fromSwidDefaultFormalParameter(
              swidDefaultFormalParameter: pipeline.reduceFromTerm(
                MarkShadowingParentReferencesInDefaultFormalParameter(
                  parent: parent,
                  swidDefaultFormalParameter: val,
                ),
              ),
            ),
            fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
              swidFunctionType: pipeline.reduceFromTerm(
                MarkShadowingParentReferencesInFunction(
                  parent: parent,
                  swidFunctionType: val,
                ),
              ),
            ),
          ),
        ),
      );
}
