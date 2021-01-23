import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedIdentifierToTs(
        {@required
            SwidStaticConstPrefixedIdentifier staticConstPrefixedIdentifier,
        @required
            SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    [
      staticConstPrefixedIdentifier.prefix.name,
      ".",
      transformLiteralToTs(
        swidLiteral: SwidStaticConst.fromSwidStaticConstFieldReference(
            swidStaticConstFieldReference:
                staticConstPrefixedIdentifier.staticConstFieldReference),
        scopeResolver: scopeResolver,
      )
    ].join();
