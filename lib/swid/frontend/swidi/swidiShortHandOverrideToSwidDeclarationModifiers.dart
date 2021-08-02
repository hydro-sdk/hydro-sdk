import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidiShortHandOverrideToSwidDeclarationModifiers({
  required SwidiConst shortHandOverride,
}) =>
    SwidDeclarationModifiers.clone(
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      overridenTransforms: shortHandOverride
          .maybeWhen(
            fromSwidiConstMap: (val) => val.entries
                .map(
                  (x) => StringTuple(
                    item1: x.item1.maybeWhen(
                      fromSwidiConstString: (val) => val.value,
                      orElse: () => "",
                    ),
                    item2: x.item2.maybeWhen(
                      fromSwidiConstString: (val) => val.value,
                      orElse: () => "",
                    ),
                  ),
                )
                .toList(),
            orElse: () => [
              const StringTuple(
                item1: "",
                item2: "",
              ),
            ],
          )
          .where(
            (x) => x.item1 != "" && x.item2 != "",
          )
          .toList(),
    );
