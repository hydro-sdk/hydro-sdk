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
        CodeExpression,
        Reference;

import 'package:collection/collection.dart' show IterableExtension;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartUnboxingExpression.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/backend/dart/util/swidTypeToDartTypeReference.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transforms/tstl/transformTstlMethodNames.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
            String> {
  DartRTManagedClassDeclaration._();

  factory DartRTManagedClassDeclaration({
    required final SwidClass swidClass,
  }) = _$DartRTManagedClassDeclarationCtor;

  @override
  String get cacheGroup => "dartRTManagedClassDeclaration";

  @override
  DartRTManagedClassDeclaration clone({
    final SwidClass? swidClass,
  }) =>
      DartRTManagedClassDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
      );

  @override
  String transform({
    required final ISwarsPipeline pipeline,
  }) =>
      DartFormatter().format(
        Class(
          (x) => x
            ..name = "RTManaged${swidClass.name}"
            ..extend = TypeReference((k) => k.symbol = swidClass.name)
            ..implements.add(TypeReference(
              (k) => k
                ..symbol = "Box"
                ..types.add(TypeReference((i) => i..symbol = swidClass.name)),
            ))
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
            ])
            ..constructors.add(
              Constructor(
                swidClass.constructorType != null
                    ? (k) => k
                      ..requiredParameters.addAll(
                          swidClass.constructorType!.normalParameterNames
                              .map(
                                (e) => Parameter(
                                  (i) => i
                                    ..name = e
                                    ..type = TypeReference(
                                      (j) => j
                                        ..symbol = swidClass.constructorType!
                                            .normalParameterTypes
                                            .elementAt(swidClass
                                                .constructorType!
                                                .normalParameterNames
                                                .indexOf(e))
                                            .when(
                                              fromSwidInterface: (val) =>
                                                  val.name,
                                              fromSwidClass: (val) => val.name,
                                              fromSwidDefaultFormalParameter:
                                                  (val) => val.staticType.name,
                                              fromSwidFunctionType: (val) =>
                                                  val.name,
                                            ),
                                    ),
                                ),
                              )
                              .toList())
                      ..requiredParameters.addAll(
                          swidClass.constructorType!.optionalParameterNames
                              .map(
                                (x) => Parameter(
                                  (k) => k
                                    ..name = removeNullabilitySuffix(
                                      str: x,
                                    )
                                    ..type = swidTypeToDartTypeReference(
                                      preserveTypeArguments: true,
                                      swidType: swidClass.constructorType!
                                          .optionalParameterTypes
                                          .elementAt(
                                        swidClass.constructorType!
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
                          swidClass.constructorType!.namedParameterTypes.entries
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
                                    ..type = swidTypeToDartTypeReference(
                                      preserveTypeArguments: true,
                                      swidType: x.value,
                                    )
                                    ..required = x.value.nullabilitySuffix ==
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
                                ...swidClass
                                    .constructorType!.normalParameterNames,
                                ...swidClass
                                    .constructorType!.optionalParameterNames,
                              ].map((e) => e).toList().join(",") +
                              ([
                                        ...swidClass.constructorType!
                                            .normalParameterNames,
                                        ...swidClass.constructorType!
                                            .optionalParameterNames,
                                      ].length >=
                                      1
                                  ? ","
                                  : "") +
                              swidClass
                                  .constructorType!.namedParameterTypes.entries
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
                                refer("makeLuaDartFunc").call(
                                  [],
                                  {
                                    "func": Method(
                                      (x) => x
                                        ..requiredParameters.addAll([
                                          Parameter((i) => i
                                            ..name =
                                                "$luaCallerArgumentsParameterName"
                                            ..type = TypeReference(((j) => j
                                              ..symbol = "List"
                                              ..types.add(refer("dynamic")))))
                                        ])
                                        ..body = Block.of(
                                          [
                                            literalList(
                                                    [refer("unwrap").call([])])
                                                .returned
                                                .statement,
                                          ],
                                        ),
                                    ).closure,
                                  },
                                ),
                              )
                              .statement,
                          ...(swidClass.instanceFieldDeclarations.entries
                              .map(
                                (x) => Code(
                                  pipeline.reduceFromTerm(
                                    DartBindInstanceField(
                                      tableKey: x.key,
                                      instanceFieldName: x.key,
                                      instanceField: x.value,
                                    ),
                                  ),
                                ),
                              )
                              .toList()),
                          ...(swidClass.methods
                              .where(
                                (x) => !isOperator(
                                  swidFunctionType: x,
                                ),
                              )
                              .map(
                                (x) => Code(
                                  pipeline.reduceFromTerm(
                                    DartMethodInjectionImplementation(
                                      swidFunctionType:
                                          instantiateAllGenericsAsDynamic(
                                        swidType: SwidType.fromSwidFunctionType(
                                          swidFunctionType: x,
                                        ),
                                      ).when(
                                        fromSwidInterface: (_) =>
                                            dartUnknownFunction,
                                        fromSwidClass: (_) =>
                                            dartUnknownFunction,
                                        fromSwidDefaultFormalParameter: (_) =>
                                            dartUnknownFunction,
                                        fromSwidFunctionType: (val) => val,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList())
                        ],
                      )
                    : (k) => k,
              ),
            )
            ..methods.addAll(
              [
                Method((k) => k
                  ..name = "unwrap"
                  ..returns = refer(swidClass.name)
                  ..body = refer("this").code),
                Method((k) => k
                  ..name = "vmObject"
                  ..type = MethodType.getter
                  ..returns = refer(swidClass.name)
                  ..body = refer("this").code)
              ],
            )
            ..methods.addAll(
              swidClass.methods
                  .where(
                    (x) => !isOperator(
                      swidFunctionType: x,
                    ),
                  )
                  .where((x) => !x.declarationModifiers.hasProtected)
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
                        ..annotations.add(refer("override"))
                        ..type = x.declarationModifiers.isGetter
                            ? MethodType.getter
                            : x.declarationModifiers.isSetter
                                ? MethodType.setter
                                : null
                        ..types.addAll(
                          x.typeFormals
                              .map((e) => Reference(e.value.name))
                              .toList(),
                        )
                        ..requiredParameters.addAll(
                          [
                            ...x.normalParameterNames
                                .map(
                                  (e) => Parameter(
                                    (p) => p
                                      ..name = e
                                      ..type = swidTypeToDartTypeReference(
                                        swidType:
                                            x.normalParameterTypes.elementAt(
                                          x.normalParameterNames.indexWhere(
                                              (element) => element == e),
                                        ),
                                      ),
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
                                      ..defaultTo =
                                          (x.namedDefaults[e.key] != null
                                              ? Code(x.namedDefaults[e.key]!
                                                  .defaultValueCode)
                                              : null)
                                      ..named = true
                                      ..required =
                                          (x.namedDefaults[e.key] == null)
                                              ? e.value.nullabilitySuffix ==
                                                  SwidNullabilitySuffix.none
                                              : false
                                      ..type = swidTypeToDartTypeReference(
                                        swidType: e.value,
                                      ),
                                  ),
                                )
                                .toList(),
                            ...x.positionalDefaultParameters.entries
                                .map(
                                  (e) => Parameter((p) => p
                                    ..name = e.key
                                    ..type = swidTypeToDartTypeReference(
                                      swidType: e.value.staticType,
                                    )
                                    ..named = false
                                    ..required = false
                                    ..defaultTo =
                                        Code(e.value.defaultValueCode)),
                                )
                                .toList(),
                            ...x.optionalParameterNames
                                .where(
                                  (e) =>
                                      x.namedDefaults.entries.firstWhereOrNull(
                                          (k) => k.key == e) ==
                                      null,
                                )
                                .map(
                                  (e) => (({
                                    Tuple2<String, SwidType>?
                                        optionalParameterType,
                                  }) =>
                                      Parameter((p) => p
                                        ..name = optionalParameterType!.item1
                                        ..type = swidTypeToDartTypeReference(
                                            swidType:
                                                optionalParameterType.item2)
                                        ..named = false
                                        ..required = false))(
                                    optionalParameterType: Tuple2(
                                      e,
                                      x.optionalParameterTypes.elementAt(
                                        x.optionalParameterNames
                                            .indexWhere((k) => k == e),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        )
                        ..name = x.name
                        ..returns = refer(x.returnType.displayName)
                        ..body = Block.of(
                          [
                            Code(
                                "Closure closure = table[\"${transformAccessorName(swidFunctionType: transformTstlMethodNames(swidFunctionType: x)).name}\"];"),
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
                  .toList(),
            ),
        )
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
