import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';

SwidType rewriteClassReferencesToInterfaceReferences(
        {@required SwidType swidType}) =>
    swidType.when(
      fromSwidInterface: (val) => SwidType.fromSwidInterface(
        swidInterface: narrowSwidInterfaceByReferenceDeclaration(
          swidInterface: val,
          onPrimitive: (val) => val,
          onClass: (val) => SwidInterface.clone(
            swidType: val,
            name: val.name != "Object" ? "I${val.name}" : val.name,
          ),
          onEnum: (val) => val,
          onVoid: (val) => val,
          onTypeParameter: (val) => val,
          onDynamic: (val) => val,
        ),
      ),
      fromSwidClass: (val) => SwidType.fromSwidClass(
        swidClass: SwidClass.clone(
            swidClass: val,
            methods: val.methods
                .map((x) => rewriteClassReferencesToInterfaceReferences(
                      swidType:
                          SwidType.fromSwidFunctionType(swidFunctionType: x),
                    ).when(
                      fromSwidInterface: (_) => null,
                      fromSwidClass: (_) => null,
                      fromSwidDefaultFormalParameter: (_) => null,
                      fromSwidFunctionType: (val) => val,
                    ))
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
                ? SwidClass.clone(
                    swidClass: rewriteClassReferencesToInterfaceReferences(
                      swidType:
                          SwidType.fromSwidClass(swidClass: val.extendedClass),
                    ).when(
                      fromSwidInterface: (_) => null,
                      fromSwidClass: (val) => val,
                      fromSwidDefaultFormalParameter: (_) => null,
                      fromSwidFunctionType: (_) => null,
                    ),
                  )
                : null),
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
            namedParameterTypes: Map.fromEntries(val.namedParameterTypes.entries
                .map((x) => MapEntry(
                    x.key,
                    rewriteClassReferencesToInterfaceReferences(
                        swidType: x.value)))
                .toList())),
      ),
    );
