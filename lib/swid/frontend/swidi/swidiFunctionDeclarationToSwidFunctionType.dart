import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFunctionTypeToSwidFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiInterfaceToSwidInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiShortHandOverrideToSwidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiTypeFormalsToSwidTypeFormals.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

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
      namedParameterTypes: Map.fromEntries(
        swidiFunctionDeclaration.namedParameters
            .map(
              (x) => x.declaration.type.when(
                fromSwidiInterface: (val) => MapEntry(
                  x.declaration.name,
                  SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: val,
                    ),
                  ),
                ),
                fromSwidiFunctionType: (val) => MapEntry(
                  x.declaration.name,
                  SwidType.fromSwidFunctionType(
                    swidFunctionType: swidiFunctionTypeToSwidFunctionType(
                      swidiFunctionType: val,
                    ),
                  ),
                ),
              ),
            )
            .whereNotNull()
            .toList(),
      ),
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
                  staticType: x.declaration.type.when(
                    fromSwidiInterface: (val) => SwidType.fromSwidInterface(
                      swidInterface: swidiInterfaceToSwidInterface(
                        swidiInterface: val,
                      ),
                    ),
                    fromSwidiFunctionType: (val) =>
                        SwidType.fromSwidFunctionType(
                      swidFunctionType: swidiFunctionTypeToSwidFunctionType(
                        swidiFunctionType: val,
                      ),
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
                  staticType: x.declaration.type.when(
                    fromSwidiInterface: (val) => SwidType.fromSwidInterface(
                      swidInterface: swidiInterfaceToSwidInterface(
                        swidiInterface: val,
                      ),
                    ),
                    fromSwidiFunctionType: (val) =>
                        SwidType.fromSwidFunctionType(
                      swidFunctionType: swidiFunctionTypeToSwidFunctionType(
                        swidiFunctionType: val,
                      ),
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
            (x) => x.declaration.type.when(
              fromSwidiInterface: (val) => SwidType.fromSwidInterface(
                swidInterface: swidiInterfaceToSwidInterface(
                  swidiInterface: val,
                ),
              ),
              fromSwidiFunctionType: (val) => SwidType.fromSwidFunctionType(
                swidFunctionType: swidiFunctionTypeToSwidFunctionType(
                  swidiFunctionType: val,
                ),
              ),
            ),
          )
          .toList(),
      optionalParameterNames: swidiFunctionDeclaration.optionalParameters
          .map((x) => x.declaration.name)
          .toList(),
      optionalParameterTypes: swidiFunctionDeclaration.optionalParameters
          .map(
            (x) => x.declaration.type.when(
              fromSwidiInterface: (val) => SwidType.fromSwidInterface(
                swidInterface: swidiInterfaceToSwidInterface(
                  swidiInterface: val,
                ),
              ),
              fromSwidiFunctionType: (val) => SwidType.fromSwidFunctionType(
                swidFunctionType: swidiFunctionTypeToSwidFunctionType(
                  swidiFunctionType: val,
                ),
              ),
            ),
          )
          .toList(),
      returnType: swidiFunctionDeclaration.returnType.when(
        fromSwidiInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: swidiInterfaceToSwidInterface(
            swidiInterface: val,
          ),
        ),
        fromSwidiFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: swidiFunctionTypeToSwidFunctionType(
            swidiFunctionType: val,
          ),
        ),
      ),
      isFactory: false,
      typeFormals: swidiTypeFormalsToSwidTypeFormals(
        type: swidiFunctionDeclaration,
      ),
    );
