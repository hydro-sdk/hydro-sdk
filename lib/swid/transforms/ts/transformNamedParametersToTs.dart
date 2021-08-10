import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformNamedParametersToTs({
  required final Map<String, SwidStaticConst>? namedParameters,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    namedParameters != null && namedParameters.keys.isNotEmpty
        ? "{ " +
            namedParameters.keys
                .map((x) =>
                    "$x: " +
                    transformLiteralToTs(
                      swidLiteral: namedParameters[x]!,
                      parentClass: parentClass,
                      scopeResolver: scopeResolver,
                      inexpressibleFunctionInvocationFallback:
                          inexpressibleFunctionInvocationFallback,
                    ))
                .join(", ") +
            " }"
        : "";
