import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/isOperator.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';

bool methodIsEmitCandidate({@required SwidFunctionType swidFunctionType}) =>
    !swidFunctionType.swidDeclarationModifiers.hasMustCallSuper &&
    !isOperator(swidFunctionType: swidFunctionType) &&
    !swidFunctionType.swidDeclarationModifiers.hasProtected;
