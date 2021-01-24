import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isOperator.dart';

bool methodIsEmitCandidate({@required SwidFunctionType swidFunctionType}) =>
    !swidFunctionType.swidDeclarationModifiers.hasMustCallSuper &&
    !isOperator(swidFunctionType: swidFunctionType) &&
    !swidFunctionType.swidDeclarationModifiers.hasProtected &&
    swidFunctionType.name != "noSuchMethod" &&
    swidFunctionType.name != "runtimeType";
