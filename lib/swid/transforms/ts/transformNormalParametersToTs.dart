import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformNormalParametersToTs({
  required final List<SwidStaticConst?> swidLiterals,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    swidLiterals
        .map((x) => transformLiteralToTs(
              swidLiteral: x!,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ))
        .join(", ");
