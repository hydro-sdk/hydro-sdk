import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/util/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNamedParametersToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';

String transformStaticConstFunctionInvocation({
  required final SwidStaticConstFunctionInvocation
      swidStaticConstFunctionInvocation,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) {
  var normalParameters = transformNormalParametersToTs(
    swidLiterals: swidStaticConstFunctionInvocation.normalParameters,
    parentClass: parentClass,
    scopeResolver: scopeResolver,
    inexpressibleFunctionInvocationFallback:
        inexpressibleFunctionInvocationFallback,
  );

  var res = "";
  if (!isInexpressibleStaticConst(
      parentClass: parentClass,
      staticConst: SwidStaticConst.fromSwidStaticConstFunctionInvocation(
        staticConstFunctionInvocation: swidStaticConstFunctionInvocation,
      ))) {
    res =
        swidStaticConstFunctionInvocation.isConstructorInvocation ? "new " : "";

    res += swidStaticConstFunctionInvocation.value + "(";

    if (normalParameters.isNotEmpty) {
      res += normalParameters;
    }

    var namedParameters = transformNamedParametersToTs(
      namedParameters: swidStaticConstFunctionInvocation.namedParameters,
      parentClass: parentClass,
      scopeResolver: scopeResolver,
      inexpressibleFunctionInvocationFallback:
          inexpressibleFunctionInvocationFallback,
    );

    if ((normalParameters.isNotEmpty) && (namedParameters.isNotEmpty)) {
      res += ",";
    }

    if (namedParameters.isNotEmpty) {
      res += namedParameters;
    }

    res += ")";
  } else {
    res = inexpressibleFunctionInvocationFallback + "()";
  }

  return res;
}
