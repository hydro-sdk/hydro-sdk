import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidStaticConstFieldDeclaration swidStaticConstFieldDeclaration;

  DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration({
    required this.swidClass,
    required this.swidStaticConstFieldDeclaration,
  });

  Code toCode() => refer("table")
      .index(literalString(transformToCamelCase(str: swidClass.name) +
          transformToPascalCase(str: swidStaticConstFieldDeclaration.name)))
      .assign(
        luaDartBinding(
          code: Block.of(
            [
              literalList([
                Code(
                  DartBoxObjectReference(
                    codeKind: CodeKind.expression,
                    boxLists: true,
                    type: swidStaticConstFieldDeclaration.value
                        .when<SwidInterface>(
                      fromSwidBooleanLiteral: (_) => dartUnknownInterface,
                      fromSwidStringLiteral: (_) => dartUnknownInterface,
                      fromSwidIntegerLiteral: (_) => dartUnknownInterface,
                      fromDoubleLiteral: (_) => dartUnknownInterface,
                      fromSwidStaticConstFunctionInvocation: (val) =>
                          val.staticType.when(
                        fromSwidInterface: (val) => val,
                        fromSwidClass: (_) => dartUnknownInterface,
                        fromSwidDefaultFormalParameter: (_) =>
                            dartUnknownInterface,
                        fromSwidFunctionType: (_) => dartUnknownInterface,
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
                  ).toDartSource(),
                )
              ]).returned.statement
            ],
          ),
        ),
      )
      .statement;

  String toDartSource() => toCode()
      .accept(DartEmitter(
        useNullSafetySyntax: true,
      ))
      .toString();
}
