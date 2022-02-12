import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidFunctionTypeResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'rewriteReferencesInFunction.freezed.dart';

@freezed
class RewriteReferencesInFunction
    with
        _$RewriteReferencesInFunction,
        HashKeyMixin<RewriteReferencesInFunction>,
        HashComparableMixin<RewriteReferencesInFunction>,
        SwarsTransformMixin<
            RewriteReferencesInFunction,
            $RewriteReferencesInFunctionCopyWith<RewriteReferencesInFunction>,
            SwidFunctionType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidFunctionTypeResultMixin {
  RewriteReferencesInFunction._();

  factory RewriteReferencesInFunction({
    required final SwidFunctionType swidFunctionType,
  }) = _$RewriteReferencesInFunctionCtor;

  @override
  String get cacheGroup => "rewriteReferencesInFunction";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  RewriteReferencesInFunction clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      RewriteReferencesInFunction(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidFunctionType.clone(
          namedParameterTypes: Map.fromEntries(
            swidFunctionType.namedParameterTypes.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  RewriteReferences(
                    swidType: x.value,
                  ),
                ),
              ),
            ),
          ),
          namedDefaults: Map.fromEntries(
            swidFunctionType.namedDefaults.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  RewriteReferencesInDefaultFormalParameter(
                    swidDefaultFormalParameter: x.value,
                  ),
                ),
              ),
            ),
          ),
          normalParameterTypes: swidFunctionType.normalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferences(
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          optionalParameterTypes: swidFunctionType.optionalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferences(
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          returnType: pipeline.reduceFromTerm(
            RewriteReferences(
              swidType: swidFunctionType.returnType,
            ),
          ),
        ),
      );
}
