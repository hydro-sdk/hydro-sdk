import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration.freezed.dart';

@freezed
class DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration
    with
        _$DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration,
        HashKeyMixin<
            DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration>,
        HashComparableMixin<
            DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration>,
        SwarsTransformMixin<
            DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration,
            $DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclarationCopyWith<
                DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration._();

  factory DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration({
    required final SwidClass swidClass,
    required final SwidStaticConstFieldDeclaration
        swidStaticConstFieldDeclaration,
  }) = _$DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclarationCtor;

  @override
  String get cacheGroup =>
      "dartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
    yield* swidStaticConstFieldDeclaration.hashKey.hashableParts;
  }

  @override
  DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration clone({
    final SwidClass? swidClass,
    final SwidStaticConstFieldDeclaration? swidStaticConstFieldDeclaration,
  }) =>
      DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
        swidStaticConstFieldDeclaration: swidStaticConstFieldDeclaration ??
            this.swidStaticConstFieldDeclaration.clone(),
      );

  Code toCode({
    required final ISwarsPipeline pipeline,
  }) =>
      refer("table")
          .index(
            literalString(
              transformToCamelCase(
                    str: swidClass.name,
                  ) +
                  transformToPascalCase(
                    str: swidStaticConstFieldDeclaration.name,
                  ),
            ),
          )
          .assign(
            luaDartBinding(
              code: Block.of(
                [
                  literalList(
                    [
                      Code(
                        pipeline.reduceFromTerm(
                          DartBoxObjectReference(
                            tableExpression: null,
                            codeKind: CodeKind.expression,
                            boxLists: true,
                            type: swidStaticConstFieldDeclaration.value
                                .when<SwidInterface>(
                              fromSwidStaticConstTopLevelVariableReference:
                                  (_) => dartUnknownInterface,
                              fromSwidStaticConstMapLiteral: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstMapLiteralEntry: (_) =>
                                  dartUnknownInterface,
                              fromSwidBooleanLiteral: (_) =>
                                  dartUnknownInterface,
                              fromSwidStringLiteral: (_) =>
                                  dartUnknownInterface,
                              fromSwidIntegerLiteral: (_) =>
                                  dartUnknownInterface,
                              fromDoubleLiteral: (_) => dartUnknownInterface,
                              fromSwidStaticConstFunctionInvocation: (val) =>
                                  val.staticType.when(
                                fromSwidInterface: (val) => val,
                                fromSwidClass: (_) => dartUnknownInterface,
                                fromSwidDefaultFormalParameter: (_) =>
                                    dartUnknownInterface,
                                fromSwidFunctionType: (_) =>
                                    dartUnknownInterface,
                              ),
                              fromSwidStaticConstFieldReference: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstPrefixedExpression: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstBinaryExpression: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstPrefixedIdentifier: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstIdentifier: (_) =>
                                  dartUnknownInterface,
                              fromSwidStaticConstListLiteral: (_) =>
                                  dartUnknownInterface,
                            ),
                            objectReference: CodeExpression(
                              Code(
                                [
                                  swidClass.name,
                                  ".",
                                  swidStaticConstFieldDeclaration.name
                                ].join(""),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ).returned.statement
                ],
              ),
            ),
          )
          .statement;

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        toCode(
          pipeline: pipeline,
        )
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
