import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstMapLiteralEntryToTs({
  required final SwidStaticConstMapLiteralEntry staticConstMapLiteralEntry,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    [
      " new MapEntry(",
      transformLiteralToTs(
        swidLiteral: staticConstMapLiteralEntry.key,
        parentClass: parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver,
      ),
      " , ",
      transformLiteralToTs(
        swidLiteral: staticConstMapLiteralEntry.value,
        parentClass: parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver,
      ),
      ")",
    ].join();
