import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferencesInType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidFunctionTypeResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markShadowingParentReferencesInFunction.freezed.dart';

@freezed
class MarkShadowingParentReferencesInFunction
    with
        _$MarkShadowingParentReferencesInFunction,
        HashKeyMixin<MarkShadowingParentReferencesInFunction>,
        HashComparableMixin<MarkShadowingParentReferencesInFunction>,
        SwarsTransformMixin<
            MarkShadowingParentReferencesInFunction,
            $MarkShadowingParentReferencesInFunctionCopyWith<
                MarkShadowingParentReferencesInFunction>,
            SwidFunctionType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidFunctionTypeResultMixin {
  MarkShadowingParentReferencesInFunction._();

  factory MarkShadowingParentReferencesInFunction({
    required final SwidClass parent,
    required final SwidFunctionType swidFunctionType,
  }) = _$MarkShadowingParentReferencesInFunctionCtor;

  @override
  String get cacheGroup => "markShadowingParentReferencesInFunction";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  MarkShadowingParentReferencesInFunction clone({
    final SwidClass? parent,
    final SwidFunctionType? swidFunctionType,
  }) =>
      MarkShadowingParentReferencesInFunction(
        parent: parent ?? this.parent,
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidFunctionType.clone(
          returnType: pipeline.reduceFromTerm(
            MarkShadowingParentReferencesInType(
              parent: parent,
              swidType: swidFunctionType.returnType,
            ),
          ),
          namedDefaults: Map.fromEntries(
            swidFunctionType.namedDefaults.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInDefaultFormalParameter(
                    parent: parent,
                    swidDefaultFormalParameter: x.value,
                  ),
                ),
              ),
            ),
          ),
          normalParameterTypes: swidFunctionType.normalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInType(
                    parent: parent,
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          optionalParameterTypes: swidFunctionType.optionalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInType(
                    parent: parent,
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          namedParameterTypes: Map.fromEntries(
            swidFunctionType.namedParameterTypes.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  MarkShadowingParentReferencesInType(
                    parent: parent,
                    swidType: x.value,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
