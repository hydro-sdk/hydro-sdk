import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInFunction.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/rewriteReferencesInInterface.dart';
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

part 'rewriteReferencesInClass.freezed.dart';

@freezed
class RewriteReferencesInClass
    with
        _$RewriteReferencesInClass,
        HashKeyMixin<RewriteReferencesInClass>,
        HashComparableMixin<RewriteReferencesInClass>,
        SwarsTransformMixin<
            RewriteReferencesInClass,
            $RewriteReferencesInClassCopyWith<RewriteReferencesInClass>,
            SwidClass>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  RewriteReferencesInClass._();

  factory RewriteReferencesInClass({
    required final SwidClass swidClass,
  }) = _$RewriteReferencesInClassCtor;

  @override
  String get cacheGroup => "rewriteReferencesInClass";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  RewriteReferencesInClass clone({
    final SwidClass? swidClass,
  }) =>
      RewriteReferencesInClass(
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
                RewriteReferencesInInterface(
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
              RewriteReferencesInFunction(
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
                        RewriteReferencesInClass(
                          swidClass: val,
                        ),
                      ),
                    ),
                    fromSwidInterface: (val) =>
                        SwidTypeFormalValue.fromSwidInterface(
                      swidInterface: pipeline.reduceFromTerm(
                        RewriteReferencesInInterface(
                          swidInterface: val,
                        ),
                      ),
                    ),
                    fromSwidFunctionType: (val) =>
                        SwidTypeFormalValue.fromSwidFunctionType(
                      swidFunctionType: pipeline.reduceFromTerm(
                        RewriteReferencesInFunction(
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
                  RewriteReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          factoryConstructors: swidClass.factoryConstructors
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          staticMethods: swidClass.staticMethods
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferencesInFunction(
                    swidFunctionType: x,
                  ),
                ),
              )
              .toList(),
          methods: swidClass.methods
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferencesInFunction(
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
                      RewriteReferences(
                        swidType: x.value,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          extendedClass: swidClass.extendedClass?.let(
            (it) => pipeline.reduceFromTerm(
              RewriteReferencesInClass(
                swidClass: it,
              ),
            ),
          ),
          implementedClasses: swidClass.implementedClasses
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferencesInClass(
                    swidClass: x,
                  ),
                ),
              )
              .toList(),
          mixedInClasses: swidClass.mixedInClasses
              .map(
                (x) => pipeline.reduceFromTerm(
                  RewriteReferencesInClass(
                    swidClass: x,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
