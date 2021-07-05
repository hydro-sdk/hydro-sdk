import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';

String transformStaticConstFieldDeclaration({
  required SwidStaticConstFieldDeclaration staticConstFieldDeclaration,
  required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  required SwidClass parentClass,
}) =>
    [
      staticConstFieldDeclaration.name[0] != "_" ? "public" : "private",
      " ",
      "static",
      " ",
      staticConstFieldDeclaration.name,
      " ",
      "=",
      " ",
      transformLiteralToTs(
        swidLiteral: staticConstFieldDeclaration.value,
        scopeResolver: scopeResolver,
        parentClass: parentClass,
        //should match the corresponding vm declaration for the inexpressible field in the same translation unit
        inexpressibleFunctionInvocationFallback:
            makeDefaultInexpressibleFunctionInvocationFallback(
          parentClass: parentClass,
          name: staticConstFieldDeclaration.name,
        ),
      ),
      ";",
    ].join("");
