import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/transformIllegalParameterNames.dart';

class TsClassConstructorImplementation {
  final SwidClass swidClass;

  const TsClassConstructorImplementation({
    required final this.swidClass,
  });

  String toTsSource() => swidClass.constructorType != null
      ? "public constructor" +
          transformTypeDeclarationToTs(
              parentClass: swidClass,
              emitTrailingReturnType: false,
              emitDefaultFormalsAsOptionalNamed: true,
              emitTopLevelInitializersForOptionalPositionals: true,
              swidType: SwidType.fromSwidFunctionType(
                  swidFunctionType: swidClass.constructorType!)) +
          "{\n" +
          TsFunctionSelfBindingInvocation(
            functionReference: [
              ...transformPackageUri(
                packageUri: swidClass.originalPackagePath,
              ).split(path.separator),
              transformToCamelCase(
                str: swidClass.name,
              )
            ].join("."),
            swidFunctionType: transformIllegalParameterNames(
              swidFunctionType: SwidFunctionType.clone(
                swidFunctionType:
                    SwidFunctionType.InsertLeadingPositionalParameter(
                  swidFunctionType: swidClass.constructorType!,
                  typeName: "this",
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      //todo classes should eventually support type arguments
                      //todo should eventually be able to produce an interface from a class
                      typeArguments: [],
                      name: "this",
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      nullabilitySuffix: SwidNullabilitySuffix.star,
                      originalPackagePath: "",
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                ),
                name: swidClass.name,
              ),
            ),
          ).toTsSource() +
          "}\n"
      : "";
}
