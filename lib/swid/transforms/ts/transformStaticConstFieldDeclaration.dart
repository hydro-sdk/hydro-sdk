import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstFieldDeclaration({
  @required SwidStaticConstFieldDeclaration staticConstFieldDeclaration,
  @required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    "${staticConstFieldDeclaration.name[0] != "_" ? "public" : "private"} static ${staticConstFieldDeclaration.name} = ${transformLiteralToTs(swidLiteral: staticConstFieldDeclaration.value, scopeResolver: scopeResolver)};";
