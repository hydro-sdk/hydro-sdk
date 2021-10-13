import 'package:hydro_sdk/swid/frontend/swidi/ast/iSwidiType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers
    swidiTypeDeclarationModifiersToSwidDeclarationModifiers<
            T extends ISwidiType>({
  required final T swidiType,
}) =>
        SwidDeclarationModifiers.clone(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          ignoredAnalyses: swidiType.annotations
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
          ignoredTransforms: swidiType.annotations
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
        );
