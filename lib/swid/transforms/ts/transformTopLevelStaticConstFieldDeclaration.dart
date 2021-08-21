import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';

String transformTopLevelStaticConstFieldDeclaration({
  required final SwidTopLevelStaticConstFieldDeclaration
      swidTopLevelStaticConstFieldDeclaration,
}) =>
    [
      "export",
      " ",
      "const",
      " ",
      swidTopLevelStaticConstFieldDeclaration.declaration.name,
      " = ",
      transformLiteralToTs(
        swidLiteral: swidTopLevelStaticConstFieldDeclaration.declaration.value,
        parentClass: null,
        inexpressibleFunctionInvocationFallback:
            makeDefaultInexpressibleFunctionInvocationFallback(
          parentClass: null,
          name: swidTopLevelStaticConstFieldDeclaration.declaration.name,
        ),
        scopeResolver: makeDefaultStaticConstFieldReferenceScopeResolver(
          parentClass: null,
        ),
      ),
      ";",
    ].join("");
