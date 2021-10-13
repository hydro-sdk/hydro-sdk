import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiInterfaceToSwidInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiNullabilitySuffixToSwidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiTypeDeclarationModifiersToSwidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiTypeFormalsToSwidTypeFormals.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidFunctionType swidiFunctionTypeToSwidFunctionType({
  required final SwidiFunctionType swidiFunctionType,
}) =>
    SwidFunctionType(
      name: "",
      nullabilitySuffix: swidiNullabilitySuffixToSwidNullabilitySuffix(
        swidiNullabilitySuffix: swidiFunctionType.nullabilitySuffix,
      ),
      originalPackagePath: "",
      namedParameterTypes: Map.fromEntries(
        swidiFunctionType.namedParameters
            .map(
              (x) => x.type.when(
                fromSwidiInterface: (val) => MapEntry(
                  x.name,
                  SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: val,
                    ),
                  ),
                ),
                fromSwidiFunctionType: (_) => null,
              ),
            )
            .whereNotNull()
            .toList(),
      ),
      namedDefaults: {},
      normalParameterNames:
          swidiFunctionType.positionalParameters.map((x) => "").toList(),
      normalParameterTypes: swidiFunctionType.positionalParameters
          .map(
            (x) => x.type.when(
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
      optionalParameterNames:
          swidiFunctionType.optionalParameters.map((x) => "").toList(),
      optionalParameterTypes: swidiFunctionType.optionalParameters
          .map(
            (x) => x.type.when(
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
      returnType: swidiFunctionType.returnType.when(
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
        type: swidiFunctionType,
      ),
      declarationModifiers:
          swidiTypeDeclarationModifiersToSwidDeclarationModifiers(
        swidiType: swidiFunctionType,
      ),
    );
