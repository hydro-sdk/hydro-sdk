import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNamedParametersToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';

String transformStaticConstFunctionInvocation(
    {@required
        SwidStaticConstFunctionInvocation swidStaticConstFunctionInvocation,
    @required
        SwidStaticConstFieldReferenceScopeResolver scopeResolver}) {
  var normalParameters = transformNormalParametersToTs(
    swidLiterals: swidStaticConstFunctionInvocation.normalParameters,
    scopeResolver: scopeResolver,
  );

  var res =
      swidStaticConstFunctionInvocation.isConstructorInvocation ? "new " : "";
  res += swidStaticConstFunctionInvocation.value + "(";

  if (normalParameters?.isNotEmpty ?? false) {
    res += normalParameters;
  }

  var namedParameters = transformNamedParametersToTs(
    namedParameters: swidStaticConstFunctionInvocation.namedParameters,
    scopeResolver: scopeResolver,
  );

  if ((normalParameters?.isNotEmpty ?? false) &&
      (namedParameters?.isNotEmpty ?? false)) {
    res += ",";
  }

  if (namedParameters?.isNotEmpty ?? false) {
    res += namedParameters;
  }

  res += ")";

  return res;
}
