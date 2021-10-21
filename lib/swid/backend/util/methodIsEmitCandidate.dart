import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';

bool methodIsEmitCandidate({
  required final SwidFunctionType swidFunctionType,
}) =>
    !isOperator(swidFunctionType: swidFunctionType) &&
    swidFunctionType.name != "noSuchMethod" &&
    swidFunctionType.name != "runtimeType" &&
    swidFunctionType.name[0] != "_";
