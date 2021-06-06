

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';

String rewriteReferenceName({required String name}) =>
    name != "Object" ? "I${name}" : name;

SwidType rewriteClassReferencesToInterfaceReferences(
        {required SwidType swidType,}) =>
    swidType.when(
      fromSwidInterface: (val) => isPrimitiveMap(
              swidType: SwidType.fromSwidInterface(swidInterface: val))
          ? SwidType.fromSwidInterface(
              swidInterface: SwidInterface.clone(swidType: val, typeArguments: [
              val.typeArguments.first,
              rewriteClassReferencesToInterfaceReferences(
                  swidType: val.typeArguments.last),
            ]))
          : SwidType.fromSwidInterface(
              swidInterface: narrowSwidInterfaceByReferenceDeclaration(
                swidInterface: val,
                onPrimitive: (val) => val,
                onClass: (val) => SwidInterface.clone(
                    swidType: val,
                    name: !isPrimitive(
                            swidType:
                                SwidType.fromSwidInterface(swidInterface: val))
                        ? rewriteReferenceName(name: val.name)
                        : val.name,
                    typeArguments: val.typeArguments
                        .map((x) => rewriteClassReferencesToInterfaceReferences(
                            swidType: x,))
                        .toList()),
                onEnum: (val) => val,
                onVoid: (val) => val,
                onTypeParameter: (val) => val,
                onDynamic: (val) => val,
                onUnknown:  (val) => val,
              )!,
            ),
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
            swidClass: val,
            constructorType: val.constructorType != null
                ? rewriteClassReferencesToInterfaceReferencesInFunction(
                    swidFunctionType: val.constructorType!)
                : null,
            typeFormals: val.typeFormals
                .map(
                  (x) =>
                       SwidTypeFormal.clone(
                          swidTypeFormal: x,
                          value: x.value.when(
                            fromString: (val) =>
                                SwidTypeFormalValue.fromString(string: val),
                            fromSwidClass: (val) =>
                                SwidTypeFormalValue.fromSwidClass(
                              swidClass: SwidClass.clone(
                                swidClass:
                                    rewriteClassReferencesToInterfaceReferencesInClass(
                                        swidClass: val,),
                                name: !isPrimitive(
                                        swidType: SwidType.fromSwidClass(
                                            swidClass: val))
                                    ? rewriteReferenceName(name: val.name)
                                    : val.name,
                              ),
                            ),
                            fromSwidInterface: (val) =>
                                SwidTypeFormalValue.fromSwidInterface(
                              swidInterface:
                                  rewriteClassReferencesToInterfaceReferences(
                                swidType: SwidType.fromSwidInterface(
                                    swidInterface: val),
                              ).when(
                                fromSwidInterface: (val) => val,
                                fromSwidClass: (_) => dartUnkownInterface,
                                fromSwidDefaultFormalParameter: (_) => dartUnkownInterface,
                                fromSwidFunctionType: (_) => dartUnkownInterface,
                              ),
                            ),
                            fromSwidFunctionType: (val) =>
                                SwidTypeFormalValue.fromSwidFunctionType(
                                    swidFunctionType: SwidFunctionType.clone(
                                        swidFunctionType: val,),),
                          ),
                        )
                      ,
                )
                .toList(),
            factoryConstructors: val.factoryConstructors
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x,))
                .toList(),
            staticMethods: val.staticMethods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x,))
                .toList(),
            methods: val.methods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x,))
                .toList(),
            instanceFieldDeclarations: Map.fromEntries(
              val.instanceFieldDeclarations.entries
                  .map((x) => MapEntry(
                      x.key,
                      rewriteClassReferencesToInterfaceReferences(
                          swidType: x.value,)))
                  .toList(),
            ),
            extendedClass: val.extendedClass != null
                ? rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: val.extendedClass!)
                : null,
            implementedClasses: val.implementedClasses
                .map((x) => rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: x,))
                .toList(),
            mixedInClasses: val.mixedInClasses
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInClass(swidClass: x,))
                .toList()),
      ),
      fromSwidDefaultFormalParameter: (_) => dartUnkownType,
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
        swidFunctionType: SwidFunctionType.clone(
            swidFunctionType: val,
            returnType: rewriteClassReferencesToInterfaceReferences(
              swidType: val.returnType,
            ),
            normalParameterTypes: val.normalParameterTypes
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferences(swidType: x,))
                .toList(),
            optionalParameterTypes: val.optionalParameterTypes
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferences(swidType: x,))
                .toList(),
            namedParameterTypes: Map.fromEntries(val.namedParameterTypes.entries
                .map((x) => MapEntry(
                    x.key,
                    rewriteClassReferencesToInterfaceReferences(
                        swidType: x.value,),),)
                .toList())),
      ),
    );
