import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

String makeDefaultInexpressibleFunctionInvocationFallback({
  required final SwidClass? parentClass,
  required final String name,
}) =>
    parentClass != null
        ? [
            ...transformPackageUri(
              packageUri: parentClass.originalPackagePath,
            ).split(path.separator),
            transformToCamelCase(
                  str: parentClass.name,
                ) +
                transformToPascalCase(
                  str: name,
                )
          ].join(".")
        : "";
