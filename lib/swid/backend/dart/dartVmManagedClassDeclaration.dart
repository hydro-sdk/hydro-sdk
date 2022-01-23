import 'package:code_builder/code_builder.dart'
    show
        Class,
        Constructor,
        DartEmitter,
        Field,
        FieldModifier,
        Parameter,
        TypeReference,
        Block,
        Code;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/backend/util/methodIsEmitCandidate.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeFormalsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartVmManagedClassDeclaration.freezed.dart';

@freezed
class DartVMManagedClassDeclaration
    with
        _$DartVMManagedClassDeclaration,
        HashKeyMixin<DartVMManagedClassDeclaration>,
        HashComparableMixin<DartVMManagedClassDeclaration>,
        SwarsTransformMixin<
            DartVMManagedClassDeclaration,
            $DartVMManagedClassDeclarationCopyWith<
                DartVMManagedClassDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  DartVMManagedClassDeclaration._();

  factory DartVMManagedClassDeclaration({
    required final SwidClass swidClass,
  }) = _$DartVMManagedClassDeclarationCtor;

  @override
  String get cacheGroup => "dartVMManagedClassDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  DartVMManagedClassDeclaration clone({
    final SwidClass? swidClass,
  }) =>
      DartVMManagedClassDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
      );

  @override
  ISwarsTermResult<String> transform({
    required ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        DartFormatter().format(
          Class(
            (c) => c
              ..name = "VMManaged${swidClass.name}"
              ..extend = TypeReference(
                (t) => t
                  ..symbol = "VMManagedBox"
                  ..types.addAll(
                    [
                      (({
                        required final SwidClass swidClass,
                      }) =>
                          TypeReference(
                            (t) => t
                              ..symbol = removeNullabilitySuffixFromTypeNames(
                                swidType: SwidType.fromSwidClass(
                                  swidClass: swidClass,
                                ),
                              ).displayName,
                          ))(
                        swidClass: pipeline
                            .reduceFromTerm(
                              InstantiateTypeFormalsToLowestBound(
                                swidType: SwidType.fromSwidClass(
                                  swidClass: swidClass,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownClass,
                              fromSwidClass: (val) => val,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownClass,
                              fromSwidFunctionType: (_) => dartUnknownClass,
                            ),
                      ),
                    ],
                  ),
              )
              ..fields.addAll([
                Field(
                  (k) => k
                    ..modifier = FieldModifier.final$
                    ..type = TypeReference((i) => i..symbol = "HydroTable")
                    ..name = "table",
                ),
                Field(
                  (k) => k
                    ..modifier = FieldModifier.final$
                    ..type = TypeReference((i) => i..symbol = "HydroState")
                    ..name = "hydroState",
                ),
                Field(
                  (k) => k
                    ..modifier = FieldModifier.final$
                    ..type = (({
                      required final SwidClass swidClass,
                    }) =>
                        TypeReference(
                          (i) => i..symbol = swidClass.displayName,
                        ))(
                      swidClass: pipeline
                          .reduceFromTerm(
                            InstantiateTypeFormalsToLowestBound(
                              swidType: SwidType.fromSwidClass(
                                swidClass: swidClass,
                              ),
                            ),
                          )
                          .when(
                            fromSwidInterface: (_) => dartUnknownClass,
                            fromSwidClass: (val) => val,
                            fromSwidDefaultFormalParameter: (_) =>
                                dartUnknownClass,
                            fromSwidFunctionType: (_) => dartUnknownClass,
                          ),
                    )
                    ..name = "vmObject",
                ),
              ])
              ..constructors.add(
                Constructor(
                  (c) => c
                    ..optionalParameters.addAll(
                      [
                        Parameter((p) => p
                          ..required = true
                          ..toThis = true
                          ..named = true
                          ..name = "table"),
                        Parameter((p) => p
                          ..required = true
                          ..toThis = true
                          ..named = true
                          ..name = "vmObject"),
                        Parameter((p) => p
                          ..required = true
                          ..toThis = true
                          ..named = true
                          ..name = "hydroState"),
                      ],
                    )
                    ..initializers.addAll(
                      [
                        Code("""super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        )""")
                      ],
                    )
                    ..body = Block.of(
                      [
                        ...(swidClass.instanceFieldDeclarations.entries
                            .map(
                              (x) => Code(
                                pipeline.reduceFromTerm(
                                  DartBindInstanceField(
                                    tableKey: x.key,
                                    instanceFieldName: "vmObject.${x.key}",
                                    instanceField: x.value,
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                        ...(swidClass.methods
                            .where((x) => !x.declarationModifiers.hasProtected)
                            .where(
                              (x) => !isOperator(
                                swidFunctionType: x,
                              ),
                            )
                            .where(
                              (x) =>
                                  !x.declarationModifiers.hasVisibleForTesting,
                            )
                            .where(
                              (x) => methodIsEmitCandidate(
                                swidFunctionType: x,
                              ),
                            )
                            .map(
                              (x) => Code(
                                pipeline.reduceFromTerm(
                                  DartVMManagedClassMethodInjectionImplementation(
                                    tableKey: transformAccessorName(
                                      swidFunctionType: x,
                                    ).name,
                                    swidFunctionType: SwidFunctionType.clone(
                                      swidFunctionType: x,
                                      name: "vmObject.${x.name}",
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList())
                      ],
                    ),
                ),
              ),
          )
              .accept(
                DartEmitter(
                  useNullSafetySyntax: true,
                ),
              )
              .toString(),
        ),
      );
}
