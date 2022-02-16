import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInClass.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInFunction.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInInterface.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'importPrefixReferences.freezed.dart';

@freezed
class ImportPrefixReferences
    with
        _$ImportPrefixReferences,
        HashKeyMixin<ImportPrefixReferences>,
        HashComparableMixin,
        SwarsTransformMixin<ImportPrefixReferences,
            $ImportPrefixReferencesCopyWith<ImportPrefixReferences>, SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  ImportPrefixReferences._();

  factory ImportPrefixReferences({
    required final SwidType swidType,
  }) = _$ImportPrefixReferencesCtor;

  @override
  String get cacheGroup => "importPrefixReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  ImportPrefixReferences clone({
    final SwidType? swidType,
  }) =>
      ImportPrefixReferences(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
              swidInterface: pipeline.reduceFromTerm(
            ImportPrefixReferencesInInterface(
              swidInterface: val,
            ),
          )),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              ImportPrefixReferencesInClass(
                swidClass: val,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              ImportPrefixReferencesInDefaultFormalParameter(
                swidDefaultFormalParameter: val,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              ImportPrefixReferencesInFunction(
                swidFunctionType: val,
              ),
            ),
          ),
        ),
      );
}
