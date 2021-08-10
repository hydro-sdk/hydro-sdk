import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiInterfaceToSwidInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiShortHandOverrideToSwidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

SwidFunctionType swidiFunctionDeclarationToSwidFunctionType({
  required final SwidiFunctionDeclaration swidiFunctionDeclaration,
}) =>
    SwidFunctionType(
      name: swidiFunctionDeclaration.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      declarationModifiers: swidiShortHandOverrideToSwidDeclarationModifiers(
        shortHandOverride: swidiFunctionDeclaration.shortHandOverride,
      ),
      namedParameterTypes:
          Map.fromEntries(swidiFunctionDeclaration.namedParameters
              .map(
                (x) => MapEntry(
                  x.declaration.name,
                  SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: x.declaration.type,
                    ),
                  ),
                ),
              )
              .toList()),
      namedDefaults: Map.fromEntries(swidiFunctionDeclaration.optionalParameters
          .map(
            (x) => x.declaration.defaultConstValue.when(
              fromSwidiConstFunctionInvocation: (_) =>
                  dartUnkownDefaultFormalParameterEntry,
              fromSwidiConstBoolean: (_) =>
                  dartUnkownDefaultFormalParameterEntry,
              fromSwidiConstMap: (_) => dartUnkownDefaultFormalParameterEntry,
              fromSwidiEmptyConst: (val) =>
                  dartUnkownDefaultFormalParameterEntry,
              fromSwidiConstNumber: (val) => MapEntry(
                x.declaration.name,
                SwidDefaultFormalParameter(
                  nullabilitySuffix: dartNum.nullabilitySuffix,
                  originalPackagePath: dartNum.originalPackagePath,
                  defaultValueCode: val.value,
                  value: SwidStaticConst.fromSwidIntegerLiteral(
                    swidIntegerLiteral: SwidIntegerLiteral(
                      value: val.value,
                    ),
                  ),
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: x.declaration.type,
                    ),
                  ),
                ),
              ),
              fromSwidiConstString: (val) => MapEntry(
                x.declaration.name,
                SwidDefaultFormalParameter(
                  nullabilitySuffix: dartNum.nullabilitySuffix,
                  originalPackagePath: dartNum.originalPackagePath,
                  defaultValueCode: val.value,
                  value: SwidStaticConst.fromSwidStringLiteral(
                    swidStringLiteral: SwidStringLiteral(
                      value: val.value,
                    ),
                  ),
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: x.declaration.type,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList()
            ..removeWhere((x) => x == dartUnkownDefaultFormalParameterEntry)),
      normalParameterNames: swidiFunctionDeclaration.positionalParameters
          .map((x) => x.declaration.name)
          .toList(),
      normalParameterTypes: swidiFunctionDeclaration.positionalParameters
          .map(
            (x) => SwidType.fromSwidInterface(
              swidInterface: swidiInterfaceToSwidInterface(
                swidiInterface: x.declaration.type,
              ),
            ),
          )
          .toList(),
      optionalParameterNames: swidiFunctionDeclaration.optionalParameters
          .map((x) => x.declaration.name)
          .toList(),
      optionalParameterTypes: swidiFunctionDeclaration.optionalParameters
          .map(
            (x) => SwidType.fromSwidInterface(
              swidInterface: swidiInterfaceToSwidInterface(
                swidiInterface: x.declaration.type,
              ),
            ),
          )
          .toList(),
      returnType: SwidType.fromSwidInterface(
          swidInterface: swidiInterfaceToSwidInterface(
              swidiInterface: swidiFunctionDeclaration.returnType)),
      isFactory: false,
      typeFormals: swidiFunctionDeclaration.typeFormals
          .map(
            (x) => SwidTypeFormal(
              value: SwidTypeFormalValue.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: x.name,
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
            ),
          )
          .toList(),
    );
