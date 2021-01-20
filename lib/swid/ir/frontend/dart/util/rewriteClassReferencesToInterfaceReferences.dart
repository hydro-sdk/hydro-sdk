import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';

SwidType rewriteClassReferencesToInterfaceReferences(
        {@required SwidType swidType}) =>
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
                    name: val.name != "Object" ? "I${val.name}" : val.name,
                    typeArguments: val.typeArguments
                        .map((x) => rewriteClassReferencesToInterfaceReferences(
                            swidType: x))
                        .toList()),
                onEnum: (val) => val,
                onVoid: (val) => val,
                onTypeParameter: (val) => val,
                onDynamic: (val) => val,
              ),
            ),
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
            swidClass: val,
            constructorType: val.constructorType != null
                ? rewriteClassReferencesToInterfaceReferencesInFunction(
                    swidFunctionType: val.constructorType)
                : null,
            factoryConstructors: val.factoryConstructors
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x))
                .toList(),
            staticMethods: val.staticMethods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x))
                .toList(),
            methods: val.methods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x))
                .toList(),
            instanceFieldDeclarations: Map.fromEntries(
              val.instanceFieldDeclarations.entries
                  .map((x) => MapEntry(
                      x.key,
                      rewriteClassReferencesToInterfaceReferences(
                          swidType: x.value)))
                  .toList(),
            ),
            extendedClass: val.extendedClass != null
                ? rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: val.extendedClass)
                : null,
            implementedClasses: val.implementedClasses
                .map((x) => rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: x))
                .toList(),
            mixedInClasses: val.mixedInClasses
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInClass(swidClass: x))
                .toList()),
      ),
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
        swidFunctionType: SwidFunctionType.clone(
            swidFunctionType: val,
            returnType: rewriteClassReferencesToInterfaceReferences(
              swidType: val.returnType,
            ),
            normalParameterTypes: val.normalParameterTypes
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferences(swidType: x))
                .toList(),
            optionalParameterTypes: val.optionalParameterTypes
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferences(swidType: x))
                .toList(),
            namedParameterTypes: Map.fromEntries(val.namedParameterTypes.entries
                .map((x) => MapEntry(
                    x.key,
                    rewriteClassReferencesToInterfaceReferences(
                        swidType: x.value)))
                .toList())),
      ),
    );
