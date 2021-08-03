import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

String transformStaticConstListLiteralToTs({
  required SwidStaticConstListLiteral staticConstListLiteral,
  required SwidClass? parentClass,
  required String inexpressibleFunctionInvocationFallback,
  required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    [
      "List.fromArray",
      ...(staticConstListLiteral.elements.isEmpty
          ? [
              "<",
              transformTypeDeclarationToTs(
                swidType: staticConstListLiteral.staticType.when(
                  fromSwidInterface: (val) => val.typeArguments.first,
                  fromSwidClass: (_) => staticConstListLiteral.staticType,
                  fromSwidDefaultFormalParameter: (_) =>
                      staticConstListLiteral.staticType,
                  fromSwidFunctionType: (_) =>
                      staticConstListLiteral.staticType,
                ),
                parentClass: null,
                emitDefaultFormalsAsOptionalNamed: false,
                emitTopLevelInitializersForOptionalPositionals: false,
                emitTrailingReturnType: true,
                nestedTrailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
                topLevelTrailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
              ),
              ">",
            ]
          : []),
      "(",
      "[",
      ...staticConstListLiteral.elements
          .map((x) => [
                transformLiteralToTs(
                  swidLiteral: x,
                  parentClass: parentClass,
                  inexpressibleFunctionInvocationFallback:
                      inexpressibleFunctionInvocationFallback,
                  scopeResolver: scopeResolver,
                ),
                ",",
              ].join(""))
          .toList(),
      "])"
    ].join("");
