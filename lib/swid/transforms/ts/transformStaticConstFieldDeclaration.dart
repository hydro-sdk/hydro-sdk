import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstFieldDeclaration({
  @required SwidStaticConstFieldDeclaration staticConstFieldDeclaration,
  @required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  @required SwidClass parentClass,
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
          inexpressibleFunctionInvocationFallback: [
            ...transformPackageUri(packageUri: parentClass.originalPackagePath)
                .split(path.separator),
            transformToCamelCase(str: parentClass.name) +
                transformToPascalCase(str: staticConstFieldDeclaration.name)
          ].join(".")),
      ";",
    ].join("");
