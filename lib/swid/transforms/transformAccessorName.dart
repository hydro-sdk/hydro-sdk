

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

SwidFunctionType transformAccessorName({
  required SwidFunctionType swidFunctionType,
  bool addPrefixes = true,
  bool removeSuffixes = true,
}) {
  if (swidFunctionType.swidDeclarationModifiers.isSetter ) {
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
        ]..removeWhere((x) => x == null))
            .join());
  } else if (swidFunctionType.swidDeclarationModifiers.isGetter ) {
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
        ]..removeWhere((x) => x == null))
            .join());
  }

  return swidFunctionType;
}
