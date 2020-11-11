import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionInvocationPositionalParameters.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsClassMethodDeclarations {
  final SwidClass swidClass;

  TsClassMethodDeclarations({@required this.swidClass});

  String toTsSource() => (swidClass.methods.isNotEmpty ?? false)
      ? [
            ...tsClassMethodInjectionCandidates(
                    swidFunctionTypes: swidClass.methods)
                .map((x) =>
                    "public ${x.name}" +
                    transformTypeDeclarationToTs(
                        emitTrailingReturnType: false,
                        emitDefaultFormalsAsOptionalNamed: true,
                        swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: x)) +
                    " {\n" +
                    "    return " +
                    TsFunctionInvocation(
                        functionReference: "this." +
                            TsClassMethodInjectionFieldName(swidFunctionType: x)
                                .toTsSource(),
                        tsFunctionInvocationPositionalParameters:
                            TsFunctionInvocationPositionalParameters(
                                positionalReferences: x.normalParameterNames),
                        tsFunctionInvocationNamedParameters: [
                          TsFunctionInvocationNamedParameters.fromSpread(
                              tsFunctionInvocationNamedParametersSpread:
                                  TsFunctionInvocationNamedParametersSpread(
                                      references: [
                                TsFunctionDefaultNamedPropsObjectName(
                                        swidFunctionType: x)
                                    .toTsSource(),
                                "props"
                              ]))
                        ]).toTsSource() +
                    "\n}")
          ].join("\n") +
          "\n"
      : "";
}
