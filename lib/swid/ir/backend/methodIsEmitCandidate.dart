import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

bool methodIsEmitCandidate({@required SwidFunctionType swidFunctionType}) =>
    !swidFunctionType.swidDeclarationModifiers.hasMustCallSuper;
