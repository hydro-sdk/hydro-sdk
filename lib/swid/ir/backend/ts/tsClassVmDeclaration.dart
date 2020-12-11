import 'package:hydro_sdk/swid/ir/backend/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformVmDeclarationToTs.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class TsClassVmDeclaration {
  final SwidClass swidClass;

  TsClassVmDeclaration({@required this.swidClass});

  TsVmDeclaration _addConstructorBindingDeclarations(
          {@required TsVmDeclaration tsVmDeclaration}) =>
      transformPackageUri(packageUri: swidClass.originalPackagePath)
                  .split(path.separator)
                  .last ==
              tsVmDeclaration.name
          ? TsVmDeclaration.clone(tsVmDeclaration: tsVmDeclaration, methods: [
              SwidFunctionType.MakeReceiverVoid(
                  swidFunctionType: SwidFunctionType.InsertLeadingPositionalParameter(
                      typeName: transformToCamelCase(str: swidClass.name),
                      swidType: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                              //todo classes should eventually support type arguments
                              //todo should eventually be able to produce an interface from a class
                              typeArguments: [],
                              name: swidClass.name,
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind.classElement,
                              nullabilitySuffix: SwidNullabilitySuffix.star,
                              originalPackagePath: "")),
                      swidFunctionType: SwidFunctionType.clone(
                          swidFunctionType: swidClass.constructorType,
                          name: transformToCamelCase(str: swidClass.name)))),
              ...tsVmDeclaration.methods
            ])
          : tsVmDeclaration;

  String toTsSource() => requiresDartBinding(swidClass: swidClass)
      ? transformVmDeclarationToTs(
              tsVmDeclaration:
                  transformPackageUri(packageUri: swidClass.originalPackagePath)
                      .split(path.separator)
                      .map((x) =>
                          TsVmDeclaration(name: x, methods: [], children: []))
                      .reduce((previousValue, element) => TsVmDeclaration.clone(
                            tsVmDeclaration: _addConstructorBindingDeclarations(
                                tsVmDeclaration: previousValue),
                            children: [
                              _addConstructorBindingDeclarations(
                                  tsVmDeclaration: TsVmDeclaration.clone(
                                      tsVmDeclaration: element,
                                      methods: swidClass.factoryConstructors
                                          .map((x) =>
                                              SwidFunctionType.MakeReceiverVoid(
                                                  swidFunctionType:
                                                      SwidFunctionType.clone(
                                                swidFunctionType: x,
                                                name: transformToCamelCase(
                                                        str: swidClass.name) +
                                                    transformToPascalCase(
                                                        str: x.name),
                                              )))
                                          .toList())),
                            ],
                          ))) +
          ";\n"
      : "";
}
