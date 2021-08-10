import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

String transformReturnTypeToTs({
  required final SwidFunctionType swidFunctionType,
  required final TrailingReturnTypeKind trailingReturnTypeKind,
}) =>
    " ${trailingReturnTypeKind == TrailingReturnTypeKind.fatArrow ? "=>" : trailingReturnTypeKind == TrailingReturnTypeKind.colon ? ":" : ""} " +
    transformTypeDeclarationToTs(
      parentClass: null,
      swidType: swidFunctionType.returnType,
    );
