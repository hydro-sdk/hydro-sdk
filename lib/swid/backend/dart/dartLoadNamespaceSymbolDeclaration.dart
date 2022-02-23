import 'package:dart_style/dart_style.dart';
import 'package:dartlin/control_flow.dart';
import 'package:code_builder/code_builder.dart'
    show
        DartEmitter,
        Parameter,
        refer,
        literalString,
        literalList,
        Method,
        Code,
        Block,
        literalNum;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnpackClosures.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassBoxerRegistrant.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartLoadNamespaceSymbolDeclaration.freezed.dart';

@freezed
class DartLoadNamespaceSymbolDeclaration
    with
        _$DartLoadNamespaceSymbolDeclaration,
        HashKeyMixin<DartLoadNamespaceSymbolDeclaration>,
        HashComparableMixin<DartLoadNamespaceSymbolDeclaration>,
        SwarsTransformMixin<
            DartLoadNamespaceSymbolDeclaration,
            $DartLoadNamespaceSymbolDeclarationCopyWith<
                DartLoadNamespaceSymbolDeclaration>,
            String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  DartLoadNamespaceSymbolDeclaration._();

  factory DartLoadNamespaceSymbolDeclaration({
    required final SwidClass swidClass,
    required final bool format,
  }) = _$DartLoadNamespaceSymbolDeclarationCtor;

  @override
  String get cacheGroup => "dartLoadNamespaceSymbolDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;yield [
      ...format.hashableParts,
    ];
  }

  @override
  DartLoadNamespaceSymbolDeclaration clone({
    final SwidClass? swidClass,
    final bool? format,
  }) =>
      DartLoadNamespaceSymbolDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
        format: format ?? this.format,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        Method(
          (m) => m
            ..name = "load${swidClass.name}"
            ..returns = refer("void")
            ..optionalParameters.addAll(
              [
                Parameter(
                  (p) => p
                    ..required = true
                    ..named = true
                    ..name = "hydroState"
                    ..type = refer(
                      [
                        pipeline.reduceFromTerm(
                          DartImportPrefix(
                            swidType: SwidType.fromSwidInterface(
                              swidInterface: hydroState,
                            ),
                          ),
                        ),
                        hydroState.name,
                      ].join("."),
                    ),
                ),
                Parameter(
                  (p) => p
                    ..required = true
                    ..named = true
                    ..name = "table"
                    ..type = refer(
                      [
                        pipeline.reduceFromTerm(
                          DartImportPrefix(
                            swidType: SwidType.fromSwidInterface(
                              swidInterface: hydroTable,
                            ),
                          ),
                        ),
                        hydroTable.name
                      ].join("."),
                    ),
                ),
              ],
            )
            ..body = Block.of(
              [
                !swidClass.isPureAbstract() && swidClass.isConstructible()
                    ? refer("table")
                        .index(
                          literalString(
                            transformToCamelCase(
                              str: swidClass.name,
                            ),
                          ),
                        )
                        .assign(
                          (({
                            required final SwidFunctionType constructorType,
                          }) =>
                              luaDartBinding(
                                pipeline: pipeline,
                                code: Block.of(
                                  [
                                    Code(
                                      pipeline.reduceFromTerm(
                                        DartUnpackClosures(
                                          swidFunctionType: constructorType,
                                        ),
                                      ),
                                    ),
                                    literalList(
                                      [
                                        Code(
                                          pipeline.reduceFromTerm(
                                            DartFunctionSelfBindingInvocation(
                                              useClosureUnpackNameForUnboxingIdentifiers:
                                                  true,
                                              argumentBoxingProcedure:
                                                  DartBoxingProcedure.unbox,
                                              returnValueBoxingProcedure:
                                                  !constructorType.isFactory
                                                      ? DartBoxingProcedure.none
                                                      : DartBoxingProcedure.box,
                                              emitTableBindingPrefix:
                                                  !constructorType.isFactory,
                                              swidFunctionType:
                                                  SwidFunctionType.clone(
                                                swidFunctionType:
                                                    constructorType,
                                                name: !constructorType.isFactory
                                                    ? "RTManaged${swidClass.name}"
                                                    : [
                                                        pipeline.reduceFromTerm(
                                                          DartImportPrefix(
                                                            swidType: SwidType
                                                                .fromSwidClass(
                                                              swidClass:
                                                                  swidClass,
                                                            ),
                                                          ),
                                                        ),
                                                        swidClass.name
                                                      ].join("."),
                                              ),
                                              returnValueBoxingTableExpression:
                                                  constructorType.isFactory
                                                      ? refer("$luaCallerArgumentsParameterName")
                                                          .index(
                                                          literalNum(0),
                                                        )
                                                      : null,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ).returned.statement,
                                  ],
                                ),
                              ))(
                            constructorType: pipeline
                                .reduceFromTerm(
                                  InstantiateAllGenericsAsDynamic(
                                    instantiateNormalParameterTypes: true,
                                    instantiateNamedParameterTypes: true,
                                    swidType: SwidType.fromSwidFunctionType(
                                      swidFunctionType:
                                          swidClass.constructorType!,
                                    ),
                                  ),
                                )
                                .when(
                                  fromSwidInterface: (_) => dartUnknownFunction,
                                  fromSwidClass: (_) => dartUnknownFunction,
                                  fromSwidDefaultFormalParameter: (_) =>
                                      dartUnknownFunction,
                                  fromSwidFunctionType: (val) => val,
                                ),
                          ),
                        )
                        .statement
                    : Code(""),
                ...[
                  ...swidClass.staticConstFieldDeclarations
                      .where(
                        (x) => pipeline.reduceFromTerm(
                          IsInexpressibleStaticConst(
                            parentClass: swidClass,
                            swidStaticConst: x.value,
                          ),
                        ),
                      )
                      .map(
                        (x) =>
                            DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration(
                          swidClass: swidClass,
                          swidStaticConstFieldDeclaration: x,
                        ).toCode(
                          pipeline: pipeline,
                        ),
                      )
                      .toList()
                ],
                ...[
                  ...(pipeline
                      .reduceFromTerm(
                        InstantiateAllGenericsAsDynamic(
                          swidType: SwidType.fromSwidClass(
                            swidClass: swidClass,
                          ),
                        ),
                      )
                      .when(
                        fromSwidInterface: (_) => dartUnknownClass,
                        fromSwidClass: (val) => val,
                        fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
                        fromSwidFunctionType: (_) => dartUnknownClass,
                      )
                      .factoryConstructors),
                  ...swidClass.staticMethods,
                ]
                    .map(
                      (x) => DartStaticMethodNamespaceSymbolDeclaration(
                        swidClass: swidClass,
                        swidFunctionType: pipeline
                            .reduceFromTerm(
                              InstantiateAllGenericsAsDynamic(
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: x,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownFunction,
                              fromSwidClass: (_) => dartUnknownFunction,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownFunction,
                              fromSwidFunctionType: (val) => val,
                            ),
                      ).toCode(
                        pipeline: pipeline,
                      ),
                    )
                    .toList(),
                Code(
                  pipeline.reduceFromTerm(
                    DartVMManagedClassBoxerRegistrant(
                      swidClass: swidClass,
                    ),
                  ),
                ),
              ],
            ),
        )
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString()
            .let(
              (it) => iff(
                format,
                () => DartFormatter().format(
                  it,
                ),
              ).orElse(
                () => it,
              ),
            ),
      );
}
