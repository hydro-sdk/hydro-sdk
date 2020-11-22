import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

String transformReturnTypeToTs({@required SwidFunctionType swidFunctionType}) =>
    " => " +
    transformTypeDeclarationToTs(swidType: swidFunctionType.returnType);
