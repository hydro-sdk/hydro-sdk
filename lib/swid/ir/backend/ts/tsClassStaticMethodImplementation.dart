import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class TsClassStaticMethodImplementation {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  TsClassStaticMethodImplementation(
      {@required this.swidClass, @required this.swidFunctionType});

  String toTsSource() =>
      "public static " +
      swidFunctionType.name +
      transformTypeDeclarationToTs(
          emitTrailingReturnType: true,
          emitDefaultFormalsAsOptionalNamed: true,
          topLevelTrailingReturnTypeKind: TrailingReturnTypeKind.colon,
          swidType: SwidType.fromSwidFunctionType(
              swidFunctionType: swidFunctionType)) +
      "{\n" +
      "return " +
      TsFunctionSelfBindingInvocation(
        functionReference: [
          ...transformPackageUri(packageUri: swidClass.originalPackagePath)
              .split(path.separator),
          transformToCamelCase(str: swidClass.name) +
              transformToPascalCase(str: swidFunctionType.name)
        ].join("."),
        swidFunctionType: swidFunctionType,
      ).toTsSource() +
      "\n}";
}
