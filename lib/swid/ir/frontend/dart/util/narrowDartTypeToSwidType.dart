import 'package:analyzer/dart/element/type.dart'
    show
        FunctionType,
        InterfaceType,
        VoidType,
        TypeParameterType,
        DynamicType,
        DartType;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

SwidType narrowDartTypeToSwidType({@required DartType dartType}) => dartType
        is FunctionType
    ? SwidType.fromSwidFunctionType(
        swidFunctionType: SwidFunctionType.fromFunctionType(
        functionType: dartType,
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      ))
    : dartType is InterfaceType
        ? SwidType.fromSwidInterface(
            swidInterface: SwidInterface.fromInterface(interfaceType: dartType))
        : dartType is VoidType
            ? SwidType.fromSwidInterface(
                swidInterface: SwidInterface.fromVoidType(voidType: dartType))
            : dartType is TypeParameterType
                ? SwidType.fromSwidInterface(
                    swidInterface: SwidInterface.fromTypeParameterType(
                        typeParameterType: dartType))
                : dartType is DynamicType
                    ? SwidType.fromSwidInterface(
                        swidInterface: SwidInterface.fromDynamicType(
                            dynamicType: dartType))
                    : null;
