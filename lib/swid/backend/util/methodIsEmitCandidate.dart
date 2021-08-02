import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';

bool methodIsEmitCandidate({
  required SwidFunctionType swidFunctionType,
}) =>
    !swidFunctionType.declarationModifiers.hasMustCallSuper &&
    !isOperator(swidFunctionType: swidFunctionType) &&
    !swidFunctionType.declarationModifiers.hasProtected &&
    swidFunctionType.name != "noSuchMethod" &&
    swidFunctionType.name != "runtimeType" &&
    swidFunctionType.name[0] != "_";
