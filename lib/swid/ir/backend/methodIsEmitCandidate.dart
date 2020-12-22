import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';

bool methodIsEmitCandidate({@required SwidFunctionType swidFunctionType}) =>
    !swidFunctionType.swidDeclarationModifiers.hasMustCallSuper;
