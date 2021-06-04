import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

String transformReturnTypeToTs({
  required SwidFunctionType swidFunctionType,
  required TrailingReturnTypeKind trailingReturnTypeKind,
}) =>
    " ${trailingReturnTypeKind == TrailingReturnTypeKind.fatArrow ? "=>" : trailingReturnTypeKind == TrailingReturnTypeKind.colon ? ":" : ""} " +
    transformTypeDeclarationToTs(swidType: swidFunctionType.returnType);
