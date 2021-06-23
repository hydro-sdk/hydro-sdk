import 'package:analyzer/dart/element/element.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers? narrowModifierProducer({
  required dynamic element,
  required SwidDeclarationModifiers Function(ExecutableElement)
      onExecutablElement,
  required SwidDeclarationModifiers Function(PropertyAccessorElement)
      onPropertyAccessorElement,
}) {
  if (element is PropertyAccessorElement) {
    var res = onPropertyAccessorElement(element);

    return res;
  } else if (element is ExecutableElement) {
    var res = onExecutablElement(element);

    return res;
  }

  return null;
}
