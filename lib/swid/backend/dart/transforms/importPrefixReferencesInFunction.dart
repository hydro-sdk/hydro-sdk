import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidFunctionTypeResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'importPrefixReferencesInFunction.freezed.dart';

@freezed
class ImportPrefixReferencesInFunction
    with
        _$ImportPrefixReferencesInFunction,
        HashKeyMixin<ImportPrefixReferencesInFunction>,
        HashComparableMixin<ImportPrefixReferencesInFunction>,
        SwarsTransformMixin<
            ImportPrefixReferencesInFunction,
            $ImportPrefixReferencesInFunctionCopyWith<
                ImportPrefixReferencesInFunction>,
            SwidFunctionType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidFunctionTypeResultMixin {
  ImportPrefixReferencesInFunction._();

  factory ImportPrefixReferencesInFunction({
    required final SwidFunctionType swidFunctionType,
  }) = _$ImportPrefixReferencesInFunctionCtor;

  @override
  String get cacheGroup => "importPrefixReferencesInFunction";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  ImportPrefixReferencesInFunction clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      ImportPrefixReferencesInFunction(
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
                  ImportPrefixReferences(
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
                  ImportPrefixReferencesInDefaultFormalParameter(
                    swidDefaultFormalParameter: x.value,
                  ),
                ),
              ),
            ),
          ),
          normalParameterTypes: swidFunctionType.normalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferences(
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          optionalParameterTypes: swidFunctionType.optionalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferences(
                    swidType: x,
                  ),
                ),
              )
              .toList(),
          returnType: pipeline.reduceFromTerm(
            ImportPrefixReferences(
              swidType: swidFunctionType.returnType,
            ),
          ),
        ),
      );
}
