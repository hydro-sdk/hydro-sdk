import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

SwidFunctionType transformAccessorName({
  required final SwidFunctionType swidFunctionType,
  bool addPrefixes = true,
  bool removeSuffixes = true,
}) {
  if (swidFunctionType.declarationModifiers.isSetter) {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        name: ([
          addPrefixes
              ? ([
                  "set",
                  transformToPascalCase(
                    str: removeSuffixes
                        ? swidFunctionType.name.replaceAll("=", "")
                        : swidFunctionType.name,
                  )
                ]).join()
              : removeSuffixes
                  ? swidFunctionType.name.replaceAll("=", "")
                  : swidFunctionType.name,
        ]).join());
  } else if (swidFunctionType.declarationModifiers.isGetter) {
    return SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        name: ([
          addPrefixes
              ? ([
                  "get",
                  transformToPascalCase(
                    str: swidFunctionType.name,
                  )
                ]).join()
              : swidFunctionType.name
        ]).join());
  }

  return swidFunctionType;
}
