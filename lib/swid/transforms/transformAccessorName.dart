import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';

SwidFunctionType transformAccessorName(
    {@required SwidFunctionType swidFunctionType}) {
  if (swidFunctionType.swidDeclarationModifiers?.isSetter ?? false) {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        name:
            "set${transformToPascalCase(str: swidFunctionType.name.replaceAll("=", ""))}");
  } else if (swidFunctionType.swidDeclarationModifiers?.isGetter ?? false) {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        name: "get${transformToPascalCase(str: swidFunctionType.name)}");
  }

  return swidFunctionType;
}
