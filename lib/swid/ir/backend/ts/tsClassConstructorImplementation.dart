import 'package:hydro_sdk/swid/ir/backend/ts/tsClassDefaultConstructorPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationPositionalParameters.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocation.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

class TsClassConstructorImplementation {
  final SwidClass swidClass;

  TsClassConstructorImplementation({@required this.swidClass});

  String toTsSource() =>
      "public constructor" +
      transformTypeDeclarationToTs(
          emitTrailingReturnType: false,
          swidType: SwidType.fromSwidFunctionType(
              swidFunctionType: swidClass.constructorType)) +
      "{\n" +
      TsFunctionInvocation(
          functionReference: [
            ...transformPackageUri(packageUri: swidClass.originalPackagePath)
                .split(path.separator),
            transformToCamelCase(str: swidClass.name)
          ].join("."),
          tsFunctionInvocationPositionalParameters:
              TsFunctionInvocationPositionalParameters(positionalReferences: [
            "this",
            ...swidClass.constructorType.normalParameterNames
          ]),
          tsFunctionInvocationNamedParameters: [
            TsFunctionInvocationNamedParameters.fromSpread(
                tsFunctionInvocationNamedParametersSpread:
                    TsFunctionInvocationNamedParametersSpread(references: [
              TsClassDefaultConstructorPropsObjectName(swidClass: swidClass)
                  .toTsSource(),
              "props"
            ]))
          ]).toTsSource() +
      "}\n";
}
