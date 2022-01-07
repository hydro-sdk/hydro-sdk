import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/util/interfaceTermListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'collectReferencesFromStaticConst.freezed.dart';

@freezed
class CollectReferencesFromStaticConst
    with
        _$CollectReferencesFromStaticConst,
        HashKeyMixin<CollectReferencesFromStaticConst>,
        HashComparableMixin<CollectReferencesFromStaticConst>,
        SwarsAnalysisMixin<
            CollectReferencesFromStaticConst,
            $CollectReferencesFromStaticConstCopyWith<
                CollectReferencesFromStaticConst>,
            List<SwidInterface>>,
        InterfaceTermListResultMixin {
  CollectReferencesFromStaticConst._();

  factory CollectReferencesFromStaticConst({
    required final SwidStaticConst swidStaticConst,
  }) = _$CollectReferencesFromStaticConstCtor;

  @override
  String get cacheGroup => "collectReferencesFromStaticConst";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidStaticConst.hashKey.hashableParts;
  }

  @override
  CollectReferencesFromStaticConst clone({
    final SwidStaticConst? swidStaticConst,
  }) =>
      CollectReferencesFromStaticConst(
        swidStaticConst: swidStaticConst ?? this.swidStaticConst,
      );

  @override
  ISwarsTermResult<List<SwidInterface>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        ([
          ...swidStaticConst.when<List<SwidInterface>>(
            fromSwidBooleanLiteral: (_) => [],
            fromSwidStringLiteral: (_) => [],
            fromSwidIntegerLiteral: (_) => [],
            fromDoubleLiteral: (_) => [],
            fromSwidStaticConstIdentifier: (_) => [],
            fromSwidStaticConstTopLevelVariableReference: (val) => [
              val.topLevelReference.when(
                fromSwidInterface: (val) => val,
                fromSwidClass: (_) => dartUnknownInterface,
                fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
                fromSwidFunctionType: (_) => dartUnknownInterface,
              ),
            ].where((x) => x != dartUnknownInterface).toList(),
            fromSwidStaticConstFunctionInvocation: (val) => [
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(val.normalParameters
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      CollectReferencesFromStaticConst(
                        swidStaticConst: x,
                      ),
                    ),
                  )
                  .toList()),
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(val.namedParameters.entries
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      CollectReferencesFromStaticConst(
                        swidStaticConst: x.value,
                      ),
                    ),
                  )
                  .toList()),
              ...([
                val.staticType.when(
                  fromSwidInterface: (val) => val,
                  fromSwidClass: (_) => dartUnknownInterface,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
                  fromSwidFunctionType: (_) => dartUnknownInterface,
                )
              ]..removeWhere((x) => x == dartUnknownInterface))
            ],
            fromSwidStaticConstFieldReference: (_) => [],
            fromSwidStaticConstPrefixedExpression: (val) =>
                pipeline.reduceFromTerm(
              CollectReferencesFromStaticConst(
                swidStaticConst: val.expression,
              ),
            ),
            fromSwidStaticConstBinaryExpression: (val) => [
              ...(pipeline
                  .reduceFromTerm(
                    CollectReferencesFromStaticConst(
                      swidStaticConst: val.leftOperand,
                    ),
                  )
                  .toList()
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    )),
              ...(pipeline
                  .reduceFromTerm(
                    CollectReferencesFromStaticConst(
                      swidStaticConst: val.rightOperand,
                    ),
                  )
                  .toList()
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    )),
            ],
            fromSwidStaticConstPrefixedIdentifier: (val) => [
              val.prefix,
            ],
            fromSwidStaticConstListLiteral: (val) => [
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(val.elements
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          CollectReferencesFromStaticConst(
                            swidStaticConst: x,
                          ),
                        )
                        .toList()
                          ..removeWhere(
                            (x) => x == dartUnknownInterface,
                          ),
                  )
                  .toList()),
              SwidInterface(
                name: "List",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              )
            ],
            fromSwidStaticConstMapLiteralEntry: (val) => [
              ...(pipeline
                  .reduceFromTerm(
                    CollectReferencesFromStaticConst(
                      swidStaticConst: val.key,
                    ),
                  )
                  .toList()
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    )),
              ...(pipeline
                  .reduceFromTerm(
                    CollectReferencesFromStaticConst(
                      swidStaticConst: val.value,
                    ),
                  )
                  .toList()
                    ..removeWhere(
                      (x) => x == dartUnknownInterface,
                    )),
              SwidInterface(
                name: "MapEntry",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              )
            ],
            fromSwidStaticConstMapLiteral: (val) => [
              ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(
                val.elements
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        CollectReferencesFromStaticConst(
                          swidStaticConst: SwidStaticConst
                              .fromSwidStaticConstMapLiteralEntry(
                            swidStaticConstMapLiteralEntry: x,
                          ),
                        ),
                      )..removeWhere(
                          (x) => x == dartUnknownInterface,
                        ),
                    )
                    .toList(),
              ),
              SwidInterface(
                name: "List",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
              SwidInterface(
                name: "Map",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ],
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
                  : prev,
            )
            .toList()
            .cast<SwidInterface>())
          ..removeWhere(
            (x) => x == dartUnknownInterface,
          ),
      );
}
