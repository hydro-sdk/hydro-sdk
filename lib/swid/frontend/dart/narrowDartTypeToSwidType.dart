import 'package:analyzer/dart/element/type.dart'
    show
        FunctionType,
        InterfaceType,
        VoidType,
        TypeParameterType,
        DynamicType,
        DartType;

import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromDynamicType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromTypeParameterType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromVoidType.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidType narrowDartTypeToSwidType({
  required final DartType? dartType,
  required final bool buildElements,
}) =>
    dartType is FunctionType
        ? SwidType.fromSwidFunctionType(
            swidFunctionType: swidFunctionTypeFromFunctionType(
            functionType: dartType,
            declarationModifiers: SwidDeclarationModifiers.empty(),
            buildElements: buildElements,
          ))
        : dartType is InterfaceType
            ? SwidType.fromSwidInterface(
                swidInterface: swidInterfaceFromInterface(
                  interfaceType: dartType,
                  buildElements: buildElements,
                ),
              )
            : dartType is VoidType
                ? SwidType.fromSwidInterface(
                    swidInterface: swidInterfaceFromVoidType(
                      voidType: dartType,
                    ),
                  )
                : dartType is TypeParameterType
                    ? SwidType.fromSwidInterface(
                        swidInterface: swidInterfaceFromTypeParameterType(
                          typeParameterType: dartType,
                        ),
                      )
                    : dartType is DynamicType
                        ? SwidType.fromSwidInterface(
                            swidInterface: swidInterfaceFromDynamicType(
                              dynamicType: dartType,
                            ),
                          )
                        : dartUnknownType;
