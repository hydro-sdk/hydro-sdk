import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validTransformNames.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidiShortHandOverrideToSwidDeclarationModifiers({
  required final SwidiConst shortHandOverride,
}) =>
    SwidDeclarationModifiers.clone(
      declarationModifiers: SwidDeclarationModifiers.empty(),
      isGetter: shortHandOverride.maybeWhen(
        fromSwidiConstMap: (val) =>
            val.entries.firstWhereOrNull(
              (x) =>
                  x.item1.maybeWhen(
                    fromSwidiConstString: (val) => val.value == isGetterName,
                    orElse: () => false,
                  ) &&
                  x.item2.maybeWhen(
                    fromSwidiConstBoolean: (val) => val.maybeWhen(
                      fromSwidiConstBooleanTrue: (_) => true,
                      orElse: () => false,
                    ),
                    orElse: () => false,
                  ),
            ) !=
            null,
        orElse: () => false,
      ),
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
              StringTuple(
                item1: "",
                item2: "",
              ),
            ],
          )
          .where(
            (x) => x.item1 != "" && x.item2 != "",
          )
          .toList(),
      ignoredTransforms: shortHandOverride
          .maybeWhen(
            fromSwidiConstMap: (val) => val.entries
                .where(
                  (x) => x.item1.maybeWhen(
                    fromSwidiConstString: (val) =>
                        validMethodShortHandOverrideKeys
                            .firstWhereOrNull((x) => x == val.value) !=
                        null,
                    orElse: () => false,
                  ),
                )
                .map((x) => x.item2.maybeWhen(
                      fromSwidiConstBoolean: (val) => val.maybeWhen(
                        fromSwidiConstBooleanFalse: (_) => x.item1.maybeWhen(
                          fromSwidiConstString: (val) => val.value,
                          orElse: () => "",
                        ),
                        orElse: () => "",
                      ),
                      orElse: () => "",
                    ))
                .toList(),
            orElse: () => [
              "",
            ],
          )
          .where((x) => x != "")
          .toList(),
    );
