import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInFunction.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInInterface.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'importPrefixReferencesInClass.freezed.dart';

@freezed
class ImportPrefixReferencesInClass
    with
        _$ImportPrefixReferencesInClass,
        HashKeyMixin<ImportPrefixReferencesInClass>,
        HashComparableMixin<ImportPrefixReferencesInClass>,
        SwarsTransformMixin<
            ImportPrefixReferencesInClass,
            $ImportPrefixReferencesInClassCopyWith<
                ImportPrefixReferencesInClass>,
            SwidClass>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  ImportPrefixReferencesInClass._();

  factory ImportPrefixReferencesInClass({
    required final SwidClass swidClass,
  }) = _$ImportPrefixReferencesInClassCtor;

  @override
  String get cacheGroup => "importPrefixReferencesInClass";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  ImportPrefixReferencesInClass clone({
    final SwidClass? swidClass,
  }) =>
      ImportPrefixReferencesInClass(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidClass.clone(
          name: pipeline
              .reduceFromTerm(
                ImportPrefixReferencesInInterface(
                  swidInterface: SwidInterface(
                    name: swidClass.name,
                    element: swidClass.element,
                    nullabilitySuffix: swidClass.nullabilitySuffix,
                    originalPackagePath: swidClass.originalPackagePath,
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: swidClass.declarationModifiers,
                  ),
                ),
              )
              .name,
          constructorType: swidClass.constructorType?.let(
            (it) => pipeline.reduceFromTerm(
              ImportPrefixReferencesInFunction(
                swidFunctionType: it,
              ),
            ),
          ),
          typeFormals: swidClass.typeFormals
              .map(
                (x) => x.clone(
                  value: x.value.when(
                    fromString: (val) => SwidTypeFormalValue.fromString(
                      string: val,
                    ),
                    fromSwidClass: (val) => SwidTypeFormalValue.fromSwidClass(
                      swidClass: pipeline.reduceFromTerm(
                        ImportPrefixReferencesInClass(
                          swidClass: val,
                        ),
                      ),
                    ),
                    fromSwidInterface: (val) =>
                        SwidTypeFormalValue.fromSwidInterface(
                      swidInterface: pipeline.reduceFromTerm(
                        ImportPrefixReferencesInInterface(
                          swidInterface: val,
                        ),
                      ),
                    ),
                    fromSwidFunctionType: (val) =>
                        SwidTypeFormalValue.fromSwidFunctionType(
                      swidFunctionType: pipeline.reduceFromTerm(
                        ImportPrefixReferencesInFunction(
                          swidFunctionType: val,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          generativeConstructors: swidClass.generativeConstructors
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          factoryConstructors: swidClass.factoryConstructors
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          staticMethods: swidClass.staticMethods
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          methods: swidClass.methods
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          instanceFieldDeclarations: Map.fromEntries(
            swidClass.instanceFieldDeclarations.entries
                .map(
                  (x) => MapEntry(
                    x.key,
                    pipeline.reduceFromTerm(
                      ImportPrefixReferences(
                        swidType: x.value,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          extendedClass: swidClass.extendedClass?.let(
            (it) => pipeline.reduceFromTerm(
              ImportPrefixReferencesInClass(
                swidClass: it,
              ),
            ),
          ),
          implementedClasses: swidClass.implementedClasses
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInClass(
                    swidClass: x,
                  ),
                ),
              )
              .toList(),
          mixedInClasses: swidClass.mixedInClasses
              .map(
                (x) => pipeline.reduceFromTerm(
                  ImportPrefixReferencesInClass(
                    swidClass: x,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
