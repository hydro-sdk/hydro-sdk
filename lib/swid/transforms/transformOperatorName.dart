import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';

SwidFunctionType transformOperatorName(
    {@required SwidFunctionType swidFunctionType}) {
  if (swidFunctionType.name == "-") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorMinus");
  } else if (swidFunctionType.name == "+") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorPlus");
  } else if (swidFunctionType.name == "*") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorTimes");
  } else if (swidFunctionType.name == "/") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorDivide");
  } else if (swidFunctionType.name == "~/") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorIntegerDivide");
  } else if (swidFunctionType.name == "%") {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType, name: "operatorModulo");
  }

  return swidFunctionType;
}
