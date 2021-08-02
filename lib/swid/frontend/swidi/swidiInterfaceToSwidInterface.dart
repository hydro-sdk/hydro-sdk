import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidInterface swidiInterfaceToSwidInterface({
  required SwidiInterface swidiInterface,
}) =>
    SwidInterface(
      name: swidiInterface.name,
      nullabilitySuffix:
          swidiInterface.nullabilitySuffix == SwidiNullabilitySuffix.question
              ? SwidNullabilitySuffix.question
              : SwidNullabilitySuffix.none,
      originalPackagePath: swidiInterface.libraryScopePrefix.name,
      typeArguments: swidiInterface.typeArguments
          .map(
            (x) => SwidType.fromSwidInterface(
              swidInterface: swidiInterfaceToSwidInterface(
                swidiInterface: x,
              ),
            ),
          )
          .toList(),
      referenceDeclarationKind:
          swidiInterface.referenceDeclarationPrefix.name == "class"
              ? SwidReferenceDeclarationKind.classElement
              : swidiInterface.referenceDeclarationPrefix.name == "enum"
                  ? SwidReferenceDeclarationKind.enumElement
                  : swidiInterface.referenceDeclarationPrefix.name == "void"
                      ? SwidReferenceDeclarationKind.voidType
                      : swidiInterface.referenceDeclarationPrefix.name == "type"
                          ? SwidReferenceDeclarationKind.typeParameterType
                          : swidiInterface.referenceDeclarationPrefix.name ==
                                  "dynamic"
                              ? SwidReferenceDeclarationKind.dynamicType
                              : SwidReferenceDeclarationKind.unknown,
      declarationModifiers: SwidDeclarationModifiers.clone(
        declarationModifiers: SwidDeclarationModifiers.empty(),
        ignoredAnalyses: swidiInterface.annotations
            .map(
              (x) => x.value.maybeWhen(
                fromSwidiConstFunctionInvocation: (val) =>
                    val.value == "ignoreAnalysis"
                        ? val.positionalParameters.first.maybeWhen(
                            fromSwidiConstString: (val) => val.value,
                            orElse: () => "",
                          )
                        : "",
                orElse: () => "",
              ),
            )
            .where((x) => x != "")
            .toList(),
        ignoredTransforms: swidiInterface.annotations
            .map(
              (x) => x.value.maybeWhen(
                fromSwidiConstFunctionInvocation: (val) =>
                    val.value == "ignoreTransform"
                        ? val.positionalParameters.first.maybeWhen(
                            fromSwidiConstString: (val) => val.value,
                            orElse: () => "",
                          )
                        : "",
                orElse: () => "",
              ),
            )
            .where((x) => x != "")
            .toList(),
      ),
    );
