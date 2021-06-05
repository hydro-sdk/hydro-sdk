

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidiInterfaceToSwidInterface(
        {required SwidiInterface swidiInterface}) =>
    SwidInterface(
      name: swidiInterface.name,
      nullabilitySuffix:
          swidiInterface.nullabilitySuffix == SwidiNullabilitySuffix.question
              ? SwidNullabilitySuffix.question
              : SwidNullabilitySuffix.none,
      originalPackagePath: swidiInterface.libraryScopePrefix.name,
      typeArguments: [],
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
                              : null,
    );
