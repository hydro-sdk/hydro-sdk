import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformNamedParametersToTs({
  required Map<String?, SwidStaticConst?> namedParameters,
  required SwidClass parentClass,
  required String inexpressibleFunctionInvocationFallback,
  required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
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
