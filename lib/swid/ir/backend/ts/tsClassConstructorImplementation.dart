import 'package:hydro_sdk/swid/ir/backend/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class TsClassConstructorImplementation {
  final SwidClass swidClass;

  TsClassConstructorImplementation({@required this.swidClass});

  String toTsSource() => requiresDartBinding(swidClass: swidClass)
      ? "public constructor" +
          transformTypeDeclarationToTs(
              emitTrailingReturnType: false,
              emitDefaultFormalsAsOptionalNamed: true,
              swidType: SwidType.fromSwidFunctionType(
                  swidFunctionType: swidClass.constructorType)) +
          "{\n" +
          TsFunctionSelfBindingInvocation(
            functionReference: [
              ...transformPackageUri(packageUri: swidClass.originalPackagePath)
                  .split(path.separator),
              transformToCamelCase(str: swidClass.name)
            ].join("."),
            swidFunctionType: SwidFunctionType.clone(
              swidFunctionType:
                  SwidFunctionType.InsertLeadingPositionalParameter(
                      swidFunctionType: swidClass.constructorType,
                      typeName: "this",
                      swidType: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                        name: "this",
                        nullabilitySuffix: SwidNullabilitySuffix.star,
                        originalPackagePath: "",
                      ))),
              name: swidClass.name,
            ),
          ).toTsSource() +
          "}\n"
      : "";
}
