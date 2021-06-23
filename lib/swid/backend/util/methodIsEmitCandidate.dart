import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';

bool methodIsEmitCandidate({required SwidFunctionType swidFunctionType}) =>
    !swidFunctionType.swidDeclarationModifiers.hasMustCallSuper &&
    !isOperator(swidFunctionType: swidFunctionType) &&
    !swidFunctionType.swidDeclarationModifiers.hasProtected &&
    swidFunctionType.name != "noSuchMethod" &&
    swidFunctionType.name != "runtimeType";
