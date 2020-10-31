import 'package:hydro_sdk/swid/ir/backend/ts/tsVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
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
                  swidFunctionType: SwidFunctionType.clone(
                      swidFunctionType: swidClass.constructorType,
                      name: transformToCamelCase(str: swidClass.name))),
              ...tsVmDeclaration.methods
            ])
          : tsVmDeclaration;

  String toTsSource() => transformVmDeclarationToTs(
      tsVmDeclaration: transformPackageUri(
              packageUri: swidClass.originalPackagePath)
          .split(path.separator)
          .map((x) => TsVmDeclaration(name: x, methods: [], children: []))
          .reduce((previousValue, element) => TsVmDeclaration.clone(
                  tsVmDeclaration: _addConstructorBindingDeclarations(
                      tsVmDeclaration: previousValue),
                  children: [
                    _addConstructorBindingDeclarations(tsVmDeclaration: element)
                  ])));
}

// transformPackageUri(
//                               packageUri: swidClass.originalPackagePath)
//                           .split(path.separator)
//                           .last
//                   ? TsVmDeclaration.clone(tsVmDeclaration: element, methods: [
//                       SwidFunctionType.clone(
//                         swidFunctionType: swidClass.constructorType,
//                         name: transformToCamelCase(str: swidClass.name),
//                         normalParameterNames: [
//                           "this",
//                           ...swidClass.constructorType.normalParameterNames
//                         ],
//                         normalParameterTypes: [
//                           SwidType.fromSwidInterface(
//                               swidInterface: SwidInterface(
//                                   name: "void",
//                                   nullabilitySuffix: SwidNullabilitySuffix.none,
//                                   originalPackagePath: "")),
//                           ...swidClass.constructorType.normalParameterTypes
//                         ],
//                       )
// ])
