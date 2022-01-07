import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/collectReferencesFromStaticConst.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/interfaceTermListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'collectAllReferences.freezed.dart';

@freezed
class CollectAllReferences
    with
        _$CollectAllReferences,
        HashKeyMixin<CollectAllReferences>,
        HashComparableMixin<CollectAllReferences>,
        SwarsAnalysisMixin<
            CollectAllReferences,
            $CollectAllReferencesCopyWith<CollectAllReferences>,
            List<SwidInterface>>,
        InterfaceTermListResultMixin {
  CollectAllReferences._();

  factory CollectAllReferences({
    required final SwidType swidType,
    @Default(false) final bool includeFirstOrderSuperClassReferences,
    @Default(true) final bool includeFirstOrderSuperClass,
  }) = _$CollectAllReferencesCtor;

  @override
  String get cacheGroup => "collectAllReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield [
      ...includeFirstOrderSuperClassReferences.hashableParts,
    ];
    yield [
      ...includeFirstOrderSuperClass.hashableParts,
    ];
  }

  @override
  CollectAllReferences clone({
    final SwidType? swidType,
    final bool? includeFirstOrderSuperClassReferences,
    final bool? includeFirstOrderSuperClass,
  }) =>
      CollectAllReferences(
        swidType: swidType ?? this.swidType,
        includeFirstOrderSuperClassReferences:
            includeFirstOrderSuperClassReferences ??
                this.includeFirstOrderSuperClassReferences,
        includeFirstOrderSuperClass:
            includeFirstOrderSuperClass ?? this.includeFirstOrderSuperClass,
      );

  @override
  ISwarsTermResult<List<SwidInterface>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        ([
          ...(swidType.isAnalysisIgnored(
            analisysName: "referenceCollection",
          )
              ? swidType.when<List<SwidInterface>>(
                  fromSwidInterface: (val) => [
                    val,
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.typeArguments
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: x.type,
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ]..removeWhere(
                      (x) => x == dartUnknownInterface,
                    ),
                  fromSwidClass: (val) => ([
                    ...(({
                      required final List<List<List<SwidInterface>>> elements,
                    }) =>
                        (({
                          required final List<List<SwidInterface>> elements,
                        }) =>
                            elements.isNotEmpty
                                ? elements.reduce(
                                    (
                                      value,
                                      element,
                                    ) =>
                                        [
                                      ...value,
                                      ...element,
                                    ],
                                  )
                                : <SwidInterface>[])(
                          elements: elements.isNotEmpty
                              ? elements.reduce(
                                  (
                                    value,
                                    element,
                                  ) =>
                                      [
                                    ...value,
                                    ...element,
                                  ],
                                )
                              : <List<SwidInterface>>[],
                        ))(
                      elements: val.typeFormals
                          .map(
                            (x) => [
                              x.value.when(
                                fromString: (_) => null,
                                fromSwidClass: (val) => [
                                  SwidInterface.fromSwidClass(
                                    swidClass: val,
                                  ),
                                ],
                                fromSwidInterface: (val) => [
                                  val,
                                ],
                                fromSwidFunctionType: (val) => [
                                  dartUnknownInterface,
                                ],
                              ),
                              x.swidTypeFormalBound?.when<List<SwidInterface>>(
                                fromSwidInterface: (val) =>
                                    pipeline.reduceFromTerm(
                                  CollectAllReferences(
                                    swidType: SwidType.fromSwidInterface(
                                      swidInterface: val,
                                    ),
                                  ),
                                ),
                                fromSwidFunctionType: (val) =>
                                    pipeline.reduceFromTerm(
                                  CollectAllReferences(
                                    swidType: SwidType.fromSwidFunctionType(
                                      swidFunctionType: val,
                                    ),
                                  ),
                                ),
                              )
                            ].whereNotNull().toList(),
                          )
                          .whereNotNull()
                          .toList(),
                    ),
                    ...(val.constructorType != null
                        ? pipeline.reduceFromTerm(
                            CollectAllReferences(
                              swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: val.constructorType!,
                              ),
                            ),
                          )
                        : <SwidInterface>[]),
                    ...(includeFirstOrderSuperClass && val.extendedClass != null
                        ? [
                            SwidInterface.fromSwidClass(
                              swidClass: val.extendedClass!,
                            ),
                            ...(includeFirstOrderSuperClassReferences
                                ? pipeline.reduceFromTerm(
                                    CollectAllReferences(
                                      includeFirstOrderSuperClass: false,
                                      swidType: SwidType.fromSwidClass(
                                        swidClass: val.extendedClass!,
                                      ),
                                    ),
                                  )
                                : [])
                          ]
                        : <SwidInterface>[]),
                    ...val.implementedClasses
                        .map(
                          (x) => SwidInterface.fromSwidClass(
                            swidClass: x,
                          ),
                        )
                        .toList(),
                    ...val.mixedInClasses
                        .map(
                          (x) => SwidInterface.fromSwidClass(
                            swidClass: x,
                          ),
                        )
                        .toList(),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(val.factoryConstructors
                        .map(
                          (x) => pipeline.reduceFromTerm(
                            CollectAllReferences(
                              swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: x,
                              ),
                            ),
                          ),
                        )
                        .toList()),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.staticMethods
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: x,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.methods
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: x,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.instanceFieldDeclarations.entries
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: x.value,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ])
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    ),
                  fromSwidDefaultFormalParameter: (val) =>
                      pipeline.reduceFromTerm(
                    CollectReferencesFromStaticConst(
                      swidStaticConst: val.value,
                    ),
                  )..removeWhere(
                          (x) => x == dartUnknownInterface,
                        ),
                  fromSwidFunctionType: (val) => ([
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.namedParameterTypes.entries
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: x.value,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.normalParameterTypes
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: x,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ...((
                      final List<List<SwidInterface>> elements,
                    ) =>
                        elements.isNotEmpty
                            ? elements.reduce(
                                (
                                  value,
                                  element,
                                ) =>
                                    [
                                  ...value,
                                  ...element,
                                ],
                              )
                            : <SwidInterface>[])(
                      val.optionalParameterTypes
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              CollectAllReferences(
                                swidType: x,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ...pipeline.reduceFromTerm(
                      CollectAllReferences(
                        swidType: val.returnType,
                      ),
                    ),
                  ])
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    ),
                )
              : [])
        ]
            .fold<List<SwidInterface>>(
              <SwidInterface>[],
              (
                prev,
                element,
              ) =>
                  <SwidInterface?>[
                            ...prev,
                          ].firstWhere(
                            (x) => x?.name == element.name,
                            orElse: () => null,
                          ) ==
                          null
                      ? [
                          ...prev,
                          element,
                        ]
                      : prev,
            )
            .whereNot(
              (x) =>
                  x.referenceDeclarationKind ==
                  SwidReferenceDeclarationKind.typeParameterType,
            )
            .whereNot(
              (x) => x == dartNull,
            )
            .toList()
            .cast<SwidInterface>())
          ..removeWhere(
            (x) => x == dartUnknownInterface,
          ),
      );
}
