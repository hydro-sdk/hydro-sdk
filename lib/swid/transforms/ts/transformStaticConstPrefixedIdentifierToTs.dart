import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedIdentifierToTs(
        {@required
            SwidStaticConstPrefixedIdentifier staticConstPrefixedIdentifier,
        @required
            SwidClass parentClass,
        @required
            String inexpressibleFunctionInvocationFallback,
        @required
            SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    [
      staticConstPrefixedIdentifier.prefix.name,
      ".",
      transformLiteralToTs(
        swidLiteral: SwidStaticConst.fromSwidStaticConstFieldReference(
            swidStaticConstFieldReference:
                staticConstPrefixedIdentifier.staticConstFieldReference),
        parentClass: parentClass,
        scopeResolver: scopeResolver,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback,
      )
    ].join();
