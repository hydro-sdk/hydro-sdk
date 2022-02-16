import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformSixteenthHashName.dart';
import 'package:hydro_sdk/swid/ir/swidElementReferenceInfo.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
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

part 'importPrefixReferencesInInterface.freezed.dart';

@freezed
class ImportPrefixReferencesInInterface
    with
        _$ImportPrefixReferencesInInterface,
        HashKeyMixin<ImportPrefixReferencesInInterface>,
        HashComparableMixin<ImportPrefixReferencesInInterface>,
        SwarsTransformMixin<
            ImportPrefixReferencesInInterface,
            $ImportPrefixReferencesInInterfaceCopyWith<
                ImportPrefixReferencesInInterface>,
            SwidInterface>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  ImportPrefixReferencesInInterface._();

  factory ImportPrefixReferencesInInterface({
    required final SwidInterface swidInterface,
  }) = _$ImportPrefixReferencesInInterfaceCtor;

  @override
  String get cacheGroup => "importPrefixReferencesInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidInterface.hashKey.hashableParts;
  }

  @override
  ImportPrefixReferencesInInterface clone({
    final SwidInterface? swidInterface,
  }) =>
      ImportPrefixReferencesInInterface(
        swidInterface: swidInterface ?? this.swidInterface,
      );

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidInterface.clone(
          name: (!swidInterface.name.startsWith(
                    pipeline.reduceFromTerm(
                      DartImportPrefix(
                        swidType: SwidType.fromSwidInterface(
                          swidInterface: swidInterface,
                        ),
                      ),
                    ),
                  ) &&
                  (swidInterface.referenceDeclarationKind ==
                          SwidReferenceDeclarationKind.classElement ||
                      swidInterface.referenceDeclarationKind ==
                          SwidReferenceDeclarationKind.enumElement ||
                      swidInterface.referenceDeclarationKind ==
                          SwidReferenceDeclarationKind.dynamicType))
              ? [
                  pipeline.reduceFromTerm(
                    DartImportPrefix(
                      swidType: SwidType.fromSwidInterface(
                        swidInterface: swidInterface,
                      ),
                    ),
                  ),
                  swidInterface.name,
                ].join(".")
              : swidInterface.name,
          typeArguments: swidInterface.typeArguments
              .map(
                (x) => x.clone(
                  type: pipeline.reduceFromTerm(
                    ImportPrefixReferences(
                      swidType: x.type,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
}
