import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidStaticConstFieldDeclaration swidStaticConstFieldDeclaration;

  DartInexpressibleStaticConstFieldBindingNamespaceSymbolDeclaration({
    @required this.swidClass,
    @required this.swidStaticConstFieldDeclaration,
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
                      fromSwidBooleanLiteral: (_) => null,
                      fromSwidStringLiteral: (_) => null,
                      fromSwidIntegerLiteral: (_) => null,
                      fromDoubleLiteral: (_) => null,
                      fromSwidStaticConstFunctionInvocation: (val) =>
                          val.staticType.when(
                        fromSwidInterface: (val) => val,
                        fromSwidClass: (_) => null,
                        fromSwidDefaultFormalParameter: (_) => null,
                        fromSwidFunctionType: (_) => null,
                      ),
                      fromSwidStaticConstFieldReference: (_) => null,
                      fromSwidStaticConstPrefixedExpression: (_) => null,
                      fromSwidStaticConstBinaryExpression: (_) => null,
                      fromSwidStaticConstPrefixedIdentifier: (_) => null,
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

  String toDartSource() => toCode().accept(DartEmitter()).toString();
}
