import 'package:dart_style/dart_style.dart';
import 'package:dartlin/dartlin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInClass.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInInterface.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/superMethodInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/typeFormalDeclarationClause.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/backend/dart/util/swidTypeToDartTypeReference.dart';
import 'package:hydro_sdk/swid/ir/analyses/instanceFieldDeclarationsShadowedByConstructorParameters.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateGenericsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteShadowingNormalConstructorParameters.dart';
import 'package:hydro_sdk/swid/ir/transforms/thisPrefixMethodsShadowedByConstructorParameters.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsDurableTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transforms/tstl/transformTstlMethodNames.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

import 'package:code_builder/code_builder.dart'
    show
        Class,
        Constructor,
        DartEmitter,
        Field,
        FieldModifier,
        Parameter,
        TypeReference,
        refer,
        literalString,
        literalList,
        Method,
        MethodType,
        Block,
        Code,
        CodeExpression;

part 'dartRtManagedClassDeclaration.freezed.dart';

@freezed
class DartRTManagedClassDeclaration
    with
        _$DartRTManagedClassDeclaration,
        HashKeyMixin<DartRTManagedClassDeclaration>,
        HashComparableMixin<DartRTManagedClassDeclaration>,
        SwarsTransformMixin<
            DartRTManagedClassDeclaration,
            $DartRTManagedClassDeclarationCopyWith<
                DartRTManagedClassDeclaration>,
            String>,
        SwarsDurableTermMixin,
        SwarsTermStringResultMixin {
  DartRTManagedClassDeclaration._();

  factory DartRTManagedClassDeclaration({
    required final SwidClass swidClass,
  }) = _$DartRTManagedClassDeclarationCtor;

  @override
  String get cacheGroup => "dartRTManagedClassDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  DartRTManagedClassDeclaration clone({
    final SwidClass? swidClass,
  }) =>
      DartRTManagedClassDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        DartFormatter().format(
          Class(
            (x) => x
              ..name = "RTManaged${swidClass.name}"
              ..extend = TypeReference(
                (k) => k.symbol = [
                  pipeline.reduceFromTerm(
                    DartImportPrefix(
                      swidType: SwidType.fromSwidClass(
                        swidClass: swidClass,
                      ),
                    ),
                  ),
                  swidClass.name,
                ].join("."),
              )
              ..implements.add(TypeReference(
                (k) => k
                  ..symbol = [
                    pipeline.reduceFromTerm(
                      DartImportPrefix(
                        swidType: SwidType.fromSwidInterface(
                          swidInterface: box,
                        ),
                      ),
                    ),
                    box.name,
                  ].join(".")
                  ..types.add(
                    TypeReference(
                      (i) => i
                        ..symbol = [
                          pipeline.reduceFromTerm(
                            DartImportPrefix(
                              swidType: SwidType.fromSwidClass(
                                swidClass: swidClass,
                              ),
                            ),
                          ),
                          swidClass.name
                        ].join("."),
                    ),
                  ),
              ))
              ..fields.addAll([
                Field(
                  (k) => k
                    ..modifier = FieldModifier.final$
                    ..type = TypeReference(
                      (i) => i
                        ..symbol = [
                          pipeline.reduceFromTerm(
                            DartImportPrefix(
                              swidType: SwidType.fromSwidInterface(
                                swidInterface: hydroTable,
                              ),
                            ),
                          ),
                          hydroTable.name
                        ].join("."),
                    )
                    ..name = "table",
                ),
                Field(
                  (k) => k
                    ..modifier = FieldModifier.final$
                    ..type = TypeReference(
                      (i) => i
                        ..symbol = [
                          pipeline.reduceFromTerm(
                            DartImportPrefix(
                              swidType: SwidType.fromSwidInterface(
                                swidInterface: hydroState,
                              ),
                            ),
                          ),
                          hydroState.name,
                        ].join("."),
                    )
                    ..name = "hydroState",
                ),
              ])
              ..constructors.add(
                Constructor(
                  swidClass.constructorType != null
                      ? (k) => (({
                            required final SwidFunctionType constructorType,
                          }) =>
                              k
                                ..requiredParameters
                                    .addAll(constructorType.normalParameterNames
                                        .map(
                                          (e) => Parameter(
                                            (i) => i
                                              ..name = e
                                              ..type = TypeReference(
                                                (j) => j
                                                  ..symbol = constructorType
                                                      .normalParameterTypes
                                                      .elementAt(constructorType
                                                          .normalParameterNames
                                                          .indexOf(e))
                                                      .when(
                                                        fromSwidInterface:
                                                            (val) => val
                                                                .let(
                                                                  (val) => pipeline
                                                                      .reduceFromTerm(
                                                                    ImportPrefixReferencesInInterface(
                                                                      swidInterface:
                                                                          val,
                                                                    ),
                                                                  ),
                                                                )
                                                                .displayName,
                                                        fromSwidClass: (val) =>
                                                            val
                                                                .let(
                                                                  (val) => pipeline
                                                                      .reduceFromTerm(
                                                                    ImportPrefixReferencesInClass(
                                                                      swidClass:
                                                                          val,
                                                                    ),
                                                                  ),
                                                                )
                                                                .displayName,
                                                        fromSwidDefaultFormalParameter:
                                                            (val) => val
                                                                .let(
                                                                  (val) => pipeline
                                                                      .reduceFromTerm(
                                                                    ImportPrefixReferencesInDefaultFormalParameter(
                                                                      swidDefaultFormalParameter:
                                                                          val,
                                                                    ),
                                                                  ),
                                                                )
                                                                .staticType
                                                                .displayName,
                                                        fromSwidFunctionType:
                                                            (val) => val.name,
                                                      ),
                                              ),
                                          ),
                                        )
                                        .toList())
                                ..requiredParameters.addAll(
                                    constructorType.optionalParameterNames
                                        .map(
                                          (x) => Parameter(
                                            (k) => k
                                              ..name = removeNullabilitySuffix(
                                                str: x,
                                              )
                                              ..type =
                                                  swidTypeToDartTypeReference(
                                                pipeline: pipeline,
                                                preserveTypeArguments: true,
                                                swidType: constructorType
                                                    .optionalParameterTypes
                                                    .elementAt(
                                                  constructorType
                                                      .optionalParameterNames
                                                      .indexWhere(
                                                    (e) => e == x,
                                                  ),
                                                ),
                                              )
                                              ..required = false
                                              ..named = false,
                                          ),
                                        )
                                        .toList())
                                ..optionalParameters.addAll(
                                    constructorType.namedParameterTypes.entries
                                        .map(
                                          (x) => MapEntry(
                                            x.key,
                                            removeNullabilitySuffixFromTypeNames(
                                              swidType: x.value,
                                            ),
                                          ),
                                        )
                                        .toList()
                                        .map(
                                          (x) => Parameter(
                                            (k) => k
                                              ..name = x.key
                                              ..type =
                                                  swidTypeToDartTypeReference(
                                                pipeline: pipeline,
                                                preserveTypeArguments: true,
                                                swidType: x.value,
                                              )
                                              ..required =
                                                  x.value.nullabilitySuffix ==
                                                      SwidNullabilitySuffix.none
                                              ..named = true,
                                          ),
                                        )
                                        .toList())
                                ..optionalParameters.addAll(
                                  [
                                    Parameter((i) => i
                                      ..required = true
                                      ..toThis = true
                                      ..named = true
                                      ..name = "table"),
                                    Parameter((i) => i
                                      ..required = true
                                      ..toThis = true
                                      ..named = true
                                      ..name = "hydroState")
                                  ],
                                )
                                ..initializers.addAll(
                                  [
                                    Code("super(" +
                                        [
                                          ...constructorType
                                              .normalParameterNames,
                                          ...constructorType
                                              .optionalParameterNames,
                                        ].map((e) => e).toList().join(",") +
                                        ([
                                                  ...constructorType
                                                      .normalParameterNames,
                                                  ...constructorType
                                                      .optionalParameterNames,
                                                ].length >=
                                                1
                                            ? ","
                                            : "") +
                                        constructorType
                                            .namedParameterTypes.entries
                                            .map((e) => e.key + ": " + e.key)
                                            .toList()
                                            .join(",") +
                                        ")"),
                                  ],
                                )
                                ..body = Block.of(
                                  [
                                    refer("table")
                                        .index(literalString("vmObject"))
                                        .assign(refer("vmObject"))
                                        .statement,
                                    refer("table")
                                        .index(literalString("unwrap"))
                                        .assign(
                                          refer(
                                            [
                                              pipeline.reduceFromTerm(
                                                DartImportPrefix(
                                                  swidType: SwidType
                                                      .fromSwidInterface(
                                                    swidInterface:
                                                        makeLuaDartFunc,
                                                  ),
                                                ),
                                              ),
                                              makeLuaDartFunc.name,
                                            ].join("."),
                                          ).call(
                                            [],
                                            {
                                              "func": Method(
                                                (x) => x
                                                  ..requiredParameters.addAll(
                                                    [
                                                      Parameter(
                                                        (i) => i
                                                          ..name =
                                                              "$luaCallerArgumentsParameterName"
                                                          ..type =
                                                              TypeReference(
                                                            ((j) => j
                                                              ..symbol = [
                                                                pipeline
                                                                    .reduceFromTerm(
                                                                  DartImportPrefix(
                                                                    swidType:
                                                                        SwidType
                                                                            .fromSwidInterface(
                                                                      swidInterface:
                                                                          dartList,
                                                                    ),
                                                                  ),
                                                                ),
                                                                dartList.name,
                                                              ].join(".")
                                                              ..types.add(
                                                                refer(
                                                                  [
                                                                    pipeline
                                                                        .reduceFromTerm(
                                                                      DartImportPrefix(
                                                                        swidType:
                                                                            SwidType.fromSwidInterface(
                                                                          swidInterface:
                                                                              dartDynamic,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    dartDynamic
                                                                        .name,
                                                                  ].join("."),
                                                                ),
                                                              )),
                                                          ),
                                                      )
                                                    ],
                                                  )
                                                  ..body = Block.of(
                                                    [
                                                      literalList([
                                                        refer("unwrap").call([])
                                                      ]).returned.statement,
                                                    ],
                                                  ),
                                              ).closure,
                                            },
                                          ),
                                        )
                                        .statement,
                                    ...((({
                                      required final List<
                                              ShadowedInstanceFieldResult>
                                          shadowedInstanceFields,
                                    }) =>
                                        swidClass
                                            .instanceFieldDeclarations.entries
                                            .map(
                                              (x) => Code(
                                                pipeline.reduceFromTerm(
                                                  DartBindInstanceField(
                                                    tableKey: x.key,
                                                    instanceFieldName:
                                                        shadowedInstanceFields
                                                                    .firstWhereOrNull(
                                                                  (k) =>
                                                                      k.fieldName ==
                                                                      x.key,
                                                                ) ==
                                                                null
                                                            ? x.key
                                                            : "this.${x.key}",
                                                    instanceField:
                                                        pipeline.reduceFromTerm(
                                                      ImportPrefixReferences(
                                                        swidType: x.value,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList())(
                                      shadowedInstanceFields:
                                          pipeline.reduceFromTerm(
                                        InstanceFieldDeclarationsShadowedByConstructorParameters(
                                          swidClass: swidClass,
                                        ),
                                      ),
                                    )),
                                    ...((({
                                      required final SwidClass swidClass,
                                    }) =>
                                        swidClass.methods
                                            .where(
                                              (x) => !isOperator(
                                                swidFunctionType: x,
                                              ),
                                            )
                                            .where(
                                              (x) => !x.declarationModifiers
                                                  .hasDeprecated,
                                            )
                                            .where(
                                              (x) => x.declarationModifiers
                                                      .hasVisibleForTesting
                                                  ? x.declarationModifiers
                                                          .hasProtected
                                                      ? true
                                                      : false
                                                  : true,
                                            )
                                            //Exclude methods that return functions
                                            .where(
                                              (x) => x.returnType.when(
                                                fromSwidInterface: (_) => true,
                                                fromSwidClass: (_) => true,
                                                fromSwidDefaultFormalParameter:
                                                    (_) => true,
                                                fromSwidFunctionType: (_) =>
                                                    false,
                                              ),
                                            )
                                            .map(
                                              (x) => Code(
                                                pipeline.reduceFromTerm(
                                                  DartMethodInjectionImplementation(
                                                    swidFunctionType: pipeline
                                                        .reduceFromTerm(
                                                          ImportPrefixReferences(
                                                            swidType: pipeline
                                                                .reduceFromTerm(
                                                              InstantiateAllGenericsAsDynamic(
                                                                swidType: SwidType
                                                                    .fromSwidFunctionType(
                                                                  swidFunctionType:
                                                                      x,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                        .when(
                                                          fromSwidInterface: (_) =>
                                                              dartUnknownFunction,
                                                          fromSwidClass: (_) =>
                                                              dartUnknownFunction,
                                                          fromSwidDefaultFormalParameter:
                                                              (_) =>
                                                                  dartUnknownFunction,
                                                          fromSwidFunctionType:
                                                              (val) => val,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList())(
                                      swidClass: pipeline.reduceFromTerm(
                                        ThisPrefixMethodsShadowedByConstructorParameters(
                                          swidClass: pipeline
                                              .reduceFromTerm(
                                                InstantiateAllGenericsAsDynamic(
                                                  instantiateNormalParameterTypes:
                                                      true,
                                                  swidType:
                                                      SwidType.fromSwidClass(
                                                    swidClass: swidClass,
                                                  ),
                                                ),
                                              )
                                              .when(
                                                fromSwidInterface: (_) =>
                                                    dartUnknownClass,
                                                fromSwidClass: (val) => val,
                                                fromSwidDefaultFormalParameter:
                                                    (_) => dartUnknownClass,
                                                fromSwidFunctionType: (_) =>
                                                    dartUnknownClass,
                                              ),
                                        ),
                                      ),
                                    ))
                                  ],
                                ))(
                            constructorType: pipeline
                                .reduceFromTerm(
                                  InstantiateGenericsToLowestBound(
                                    swidType: SwidType.fromSwidFunctionType(
                                      swidFunctionType: pipeline
                                          .reduceFromTerm(
                                            RewriteShadowingNormalConstructorParameters(
                                              swidClass: swidClass,
                                            ),
                                          )
                                          .constructorType!,
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
                          )
                      : (k) => k,
                ),
              )
              ..methods.addAll(
                [
                  Method(
                    (k) => k
                      ..name = "unwrap"
                      ..returns = refer(
                        pipeline
                            .reduceFromTerm(
                              ImportPrefixReferencesInClass(
                                swidClass: swidClass,
                              ),
                            )
                            .name,
                      )
                      ..body = refer("this").code,
                  ),
                  Method(
                    (k) => k
                      ..name = "vmObject"
                      ..type = MethodType.getter
                      ..returns = refer(
                        pipeline
                            .reduceFromTerm(
                              ImportPrefixReferencesInClass(
                                swidClass: swidClass,
                              ),
                            )
                            .name,
                      )
                      ..body = refer("this").code,
                  )
                ],
              )
              ..methods.addAll(
                (({
                  required final SwidClass swidClass,
                }) =>
                    swidClass.methods
                        .where(
                          (x) => x.isTransformIgnored(
                            transformName: "dartRtManagedClassDeclaration",
                          ),
                        )
                        .where(
                          (x) => !isOperator(
                            swidFunctionType: x,
                          ),
                        )
                        .where(
                          (x) => x.returnType.displayName.isNotEmpty
                              ? x.returnType.displayName[0] != "_"
                              : true,
                        )
                        .where(
                          (x) => !x.declarationModifiers.hasNonVirtual,
                        )
                        .where(
                          (x) => !x.declarationModifiers.hasDeprecated,
                        )
                        .where(
                          (x) => x.returnType.when(
                            fromSwidInterface: (_) => true,
                            fromSwidClass: (_) => true,
                            fromSwidDefaultFormalParameter: (_) => true,
                            fromSwidFunctionType: (_) => false,
                          ),
                        )
                        .map(
                          (x) => transformAccessorName(
                            swidFunctionType: x,
                            removeSuffixes: true,
                            addPrefixes: false,
                          ),
                        )
                        .map(
                          (x) => Method(
                            (k) => k
                              ..annotations.add(
                                refer(
                                  [
                                    pipeline.reduceFromTerm(
                                      DartImportPrefix(
                                        swidType: SwidType.fromSwidInterface(
                                          swidInterface: dartOverride,
                                        ),
                                      ),
                                    ),
                                    dartOverride.name,
                                  ].join("."),
                                ),
                              )
                              ..type = x.declarationModifiers.isGetter
                                  ? MethodType.getter
                                  : x.declarationModifiers.isSetter
                                      ? MethodType.setter
                                      : null
                              ..requiredParameters.addAll(
                                [
                                  ...x.normalParameterNames
                                      .map(
                                        (e) => Parameter(
                                          (p) => p..name = e,
                                        ),
                                      )
                                      .toList(),
                                ],
                              )
                              ..optionalParameters.addAll(
                                [
                                  ...x.namedParameterTypes.entries
                                      .map(
                                        (e) => Parameter(
                                          (p) => p
                                            ..name = e.key
                                            ..defaultTo = (x
                                                        .namedDefaults[e.key] !=
                                                    null
                                                ? Code(
                                                    x.namedDefaults[e.key]!.let(
                                                      (it) => it.value.when(
                                                        fromSwidBooleanLiteral:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStringLiteral:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidIntegerLiteral:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromDoubleLiteral: (_) =>
                                                            it.defaultValueCode,
                                                        fromSwidStaticConstFunctionInvocation:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstFieldReference:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstPrefixedExpression:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstBinaryExpression:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstPrefixedIdentifier:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstIdentifier:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstListLiteral:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstMapLiteralEntry:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstMapLiteral:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstTopLevelVariableReference:
                                                            (_) => it
                                                                .defaultValueCode,
                                                        fromSwidStaticConstPropertyAccess:
                                                            (val) => [
                                                          val.receiver,
                                                          ".",
                                                          val.property,
                                                        ].join(),
                                                      ),
                                                    ),
                                                  )
                                                : null)
                                            ..named = true
                                            ..required = (x
                                                        .namedDefaults[e.key] ==
                                                    null)
                                                ? e.value.nullabilitySuffix ==
                                                    SwidNullabilitySuffix.none
                                                : false
                                            ..type =
                                                swidTypeToDartTypeReference(
                                              pipeline: pipeline,
                                              swidType: e.value,
                                            ),
                                        ),
                                      )
                                      .toList(),
                                  ...x.positionalDefaultParameters.entries
                                      .map(
                                        (e) => Parameter(
                                          (p) => p
                                            ..name = e.key
                                            ..type =
                                                swidTypeToDartTypeReference(
                                              pipeline: pipeline,
                                              swidType: e.value.staticType,
                                            )
                                            ..named = false
                                            ..required = false
                                            ..defaultTo = Code(
                                              e.value.defaultValueCode,
                                            ),
                                        ),
                                      )
                                      .toList(),
                                  ...x.optionalParameterNames
                                      .where(
                                        (e) =>
                                            x.namedDefaults.entries
                                                .firstWhereOrNull(
                                              (k) => k.key == e,
                                            ) ==
                                            null,
                                      )
                                      .map(
                                        (e) => (({
                                          Tuple2<String, SwidType>?
                                              optionalParameterType,
                                        }) =>
                                            Parameter(
                                              (p) => p
                                                ..name =
                                                    optionalParameterType!.item1
                                                ..type =
                                                    swidTypeToDartTypeReference(
                                                  pipeline: pipeline,
                                                  swidType:
                                                      optionalParameterType
                                                          .item2,
                                                )
                                                ..named = false
                                                ..required = false,
                                            ))(
                                          optionalParameterType: Tuple2(
                                            e,
                                            x.optionalParameterTypes.elementAt(
                                              x.optionalParameterNames
                                                  .indexWhere(
                                                (k) => k == e,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ],
                              )
                              ..name = [
                                removeTypeArguments(
                                  str: x.name,
                                ),
                                x.typeFormals.isNotEmpty
                                    ? ([
                                        "<",
                                        x.typeFormals
                                            .map(
                                              (x) => pipeline.reduceFromTerm(
                                                TypeFormalDeclarationClause(
                                                  swidTypeFormal: x,
                                                ),
                                              ),
                                            )
                                            .join(","),
                                        ">",
                                      ].join(""))
                                    : "",
                              ].join()
                              ..returns = refer(
                                pipeline
                                    .reduceFromTerm(
                                      ImportPrefixReferences(
                                        swidType: x.returnType,
                                      ),
                                    )
                                    .displayName,
                              )
                              ..body = Block.of(
                                [
                                  Code(
                                    pipeline.reduceFromTerm(
                                      SuperMethodInvocation(
                                        swidFunctionType: x,
                                        swidClass: swidClass,
                                      ),
                                    ),
                                  ),
                                  Code([
                                        pipeline.reduceFromTerm(
                                          DartImportPrefix(
                                            swidType:
                                                SwidType.fromSwidInterface(
                                              swidInterface: closure,
                                            ),
                                          ),
                                        ),
                                        closure.name
                                      ].join(".") +
                                      " closure = table[\"${transformAccessorName(swidFunctionType: transformTstlMethodNames(swidFunctionType: x)).name}\"];"),
                                  Code(
                                    "return " +
                                        pipeline.reduceFromTerm(
                                          DartUnboxingExpression(
                                            identifierName: null,
                                            swidType: x.returnType,
                                            expression: CodeExpression(
                                              Code(
                                                "closure.dispatch([table],parentState: hydroState)[0]",
                                              ),
                                            ),
                                          ),
                                        ) +
                                        ";",
                                  ),
                                ],
                              ),
                          ),
                        )
                        .toList())(
                  swidClass: pipeline
                      .reduceFromTerm(
                        InstantiateGenericsToLowestBound(
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
