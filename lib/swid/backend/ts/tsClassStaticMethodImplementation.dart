import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

class TsClassStaticMethodImplementation {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  const TsClassStaticMethodImplementation({
    required this.swidClass,
    required this.swidFunctionType,
  });

  String toTsSource() =>
      "public static " +
      swidFunctionType.name +
      transformTypeDeclarationToTs(
        parentClass: swidClass,
        emitTrailingReturnType: true,
        emitDefaultFormalsAsOptionalNamed: true,
        emitTopLevelInitializersForOptionalPositionals: true,
        topLevelTrailingReturnTypeKind: TrailingReturnTypeKind.colon,
        swidType: SwidType.fromSwidFunctionType(
          swidFunctionType:
              rewriteClassReferencesToInterfaceReferencesInFunction(
            swidFunctionType: swidFunctionType,
          ),
        ),
      ) +
      "{\n" +
      "return " +
      TsFunctionSelfBindingInvocation(
        functionReference: [
          ...transformPackageUri(
            packageUri: swidClass.originalPackagePath,
          ).split(path.separator),
          transformToCamelCase(
                str: swidClass.name,
              ) +
              transformToPascalCase(
                str: swidFunctionType.name,
              )
        ].join("."),
        swidFunctionType: swidFunctionType,
      ).toTsSource() +
      "\n}";
}
