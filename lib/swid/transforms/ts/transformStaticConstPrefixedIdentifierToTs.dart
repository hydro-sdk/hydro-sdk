import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedIdentifierToTs({
  required final SwidStaticConstPrefixedIdentifier staticConstPrefixedIdentifier,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
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
