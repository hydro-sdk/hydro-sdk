import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiInterfaceToSwidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidFunctionType swidiFunctionDeclarationToSwidFunctionType(
        {@required SwidiFunctionDeclaration swidiFunctionDeclaration}) =>
    SwidFunctionType(
      name: swidiFunctionDeclaration.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
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
              fromSwidiEmptyConst: (val) => null,
              fromSwidiConstNumber: (val) => MapEntry(
                x.declaration.name,
                SwidDefaultFormalParameter(
                  name: val.value,
                  nullabilitySuffix: dartNum.nullabilitySuffix,
                  originalPackagePath: dartNum.originalPackagePath,
                  value: SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: x.declaration.type,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList()
            ..removeWhere((x) => x == null)),
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
      typeFormals: [],
    );
