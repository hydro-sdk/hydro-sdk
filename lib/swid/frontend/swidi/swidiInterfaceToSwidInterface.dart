import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiNullabilitySuffixToSwidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiTypeDeclarationModifiersToSwidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';

SwidInterface swidiInterfaceToSwidInterface({
  required final SwidiInterface swidiInterface,
}) =>
    SwidInterface(
      name: swidiInterface.name,
      nullabilitySuffix: swidiNullabilitySuffixToSwidNullabilitySuffix(
        swidiNullabilitySuffix: swidiInterface.nullabilitySuffix,
      ),
      originalPackagePath: swidiInterface.libraryScopePrefix.name,
      typeArguments: swidiInterface.typeArguments
          .map(
            (x) => SwidTypeArgumentType(
              type: SwidType.fromSwidInterface(
                swidInterface: swidiInterfaceToSwidInterface(
                  swidiInterface: x,
                ),
              ),
              element: null,
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
      declarationModifiers:
          swidiTypeDeclarationModifiersToSwidDeclarationModifiers(
        swidiType: swidiInterface,
      ),
    );
