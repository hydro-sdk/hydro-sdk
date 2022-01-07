import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/collectReferencesFromStaticConst.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/interfaceTermListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'collectAllStaticConstReferences.freezed.dart';

@freezed
class CollectAllStaticConstReferences
    with
        _$CollectAllStaticConstReferences,
        HashKeyMixin<CollectAllStaticConstReferences>,
        HashComparableMixin<CollectAllStaticConstReferences>,
        SwarsAnalysisMixin<
            CollectAllStaticConstReferences,
            $CollectAllStaticConstReferencesCopyWith<
                CollectAllStaticConstReferences>,
            List<SwidInterface>>,
        InterfaceTermListResultMixin {
  CollectAllStaticConstReferences._();

  factory CollectAllStaticConstReferences({
    required final SwidType swidType,
  }) = _$CollectAllStaticConstReferencesCtor;

  @override
  String get cacheGroup => "collectAllStaticConstReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  CollectAllStaticConstReferences clone({
    final SwidType? swidType,
  }) =>
      CollectAllStaticConstReferences(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<List<SwidInterface>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        ([
          ...swidType.when<List<SwidInterface>>(
            fromSwidInterface: (_) => [
              dartUnknownInterface,
            ],
            fromSwidClass: (val) => ([
              ...(val.constructorType != null
                  ? pipeline.reduceFromTerm(
                      CollectAllStaticConstReferences(
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: val.constructorType!,
                        ),
                      ),
                    )
                  : <SwidInterface>[]),
              ...((final List<List<SwidInterface>> elements) =>
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
                val.factoryConstructors
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        CollectAllStaticConstReferences(
                          swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: x,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(
                val.staticMethods
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        CollectAllStaticConstReferences(
                          swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: x,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((
                      value,
                      element,
                    ) =>
                      [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(val.methods
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      CollectAllStaticConstReferences(
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: x,
                        ),
                      ),
                    ),
                  )
                  .toList()),
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(val.staticConstFieldDeclarations
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      CollectReferencesFromStaticConst(
                        swidStaticConst: x.value,
                      ),
                    ),
                  )
                  .toList()),
            ])
              ..removeWhere(((x) => x == dartUnknownInterface)),
            fromSwidDefaultFormalParameter: (val) => ([
              ...(!pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: null,
                  swidStaticConst: val.value,
                ),
              )
                  ? pipeline.reduceFromTerm(
                      CollectReferencesFromStaticConst(
                        swidStaticConst: val.value,
                      ),
                    )
                  : []),
            ]..removeWhere(
                (x) => x == dartUnknownInterface,
              )),
            fromSwidFunctionType: (val) => ([
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(
                val.namedDefaults.entries
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        CollectAllStaticConstReferences(
                          swidType: SwidType.fromSwidDefaultFormalParameter(
                            swidDefaultFormalParameter: x.value,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ]),
          )
        ]
            .fold<List<SwidInterface>>(
                <SwidInterface>[],
                (prev, element) => <SwidInterface?>[
                          ...prev,
                        ].firstWhere((x) => x?.name == element.name,
                            orElse: () => null) ==
                        null
                    ? [
                        ...prev,
                        element,
                      ]
                    : prev)
            .toList()
            .cast<SwidInterface>())
          ..removeWhere(
            (x) => x == dartUnknownInterface,
          ),
      );
}
