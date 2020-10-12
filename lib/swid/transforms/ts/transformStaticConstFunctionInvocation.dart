import 'package:hydro_sdk/swid/ir/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNamedParametersToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformNormalParametersToTs.dart';
import 'package:meta/meta.dart';

String transformStaticConstFunctionInvocation(
    {@required
        SwidStaticConstFunctionInvocation swidStaticConstFunctionInvocation}) {
  var normalParameters = transformNormalParametersToTs(
      swidLiterals: swidStaticConstFunctionInvocation.normalParameters);

  var res =
      swidStaticConstFunctionInvocation.isConstructorInvocation ? "new " : "";
  res += swidStaticConstFunctionInvocation.value + "(";

  if (normalParameters?.isNotEmpty ?? false) {
    res += normalParameters;
  }

  var namedParameters = transformNamedParametersToTs(
      namedParameters: swidStaticConstFunctionInvocation.namedParameters);

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
