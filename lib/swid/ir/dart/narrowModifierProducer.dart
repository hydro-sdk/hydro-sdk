import 'package:analyzer/dart/element/element.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDeclarationModifiers.dart';
import 'package:meta/meta.dart';

SwidDeclarationModifiers narrowModifierProducer({
  @required dynamic element,
  @required
      SwidDeclarationModifiers Function(ExecutableElement) onExecutablElement,
  @required
      SwidDeclarationModifiers Function(PropertyAccessorElement)
          onPropertyAccessorElement,
}) {
  if (element is PropertyAccessorElement) {
    var res = onPropertyAccessorElement(element);
    if (res != null) {
      return res;
    }
  } else if (element is ExecutableElement) {
    var res = onExecutablElement(element);
    if (res != null) {
      return res;
    }
  }

  return null;
}
