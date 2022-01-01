import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';

String rewriteReferenceName({
  required final SwidType swidType,
}) =>
    swidType.declarationModifiers.ignoredTransforms
                .firstWhereOrNull((x) => x == "referenceRewriting") ==
            null
        ? isDartObject(swidType: swidType)
            ? "Object"
            : isDartType(swidType: swidType)
                ? "Type"
                : [
                    "I",
                    removeNullabilitySuffix(
                      str: swidType.name,
                    )
                  ].join("")
        : swidType.name;

SwidType rewriteClassReferencesToInterfaceReferences({
  required final SwidType swidType,
}) =>
    swidType.when(
      fromSwidInterface: (val) => isPrimitiveMap(
              swidType: SwidType.fromSwidInterface(swidInterface: val))
          ? SwidType.fromSwidInterface(
              swidInterface: SwidInterface.clone(
                swidType: val,
                typeArguments: [
                  val.typeArguments.first,
                  SwidTypeArgumentType(
                    type: rewriteClassReferencesToInterfaceReferences(
                      swidType: val.typeArguments.last.type,
                    ),
                    element: null,
                  ),
                ],
              ),
            )
          : SwidType.fromSwidInterface(
              swidInterface: narrowSwidInterfaceByReferenceDeclaration(
                swidInterface: val,
                onPrimitive: (val) => val,
                onClass: (val) => SwidInterface.clone(
                  swidType: val,
                  name: !isPrimitive(
                          swidType:
                              SwidType.fromSwidInterface(swidInterface: val))
                      ? rewriteReferenceName(
                          swidType: SwidType.fromSwidInterface(
                            swidInterface: val,
                          ),
                        )
                      : val.name,
                  typeArguments: val.typeArguments
                      .map(
                        (x) => SwidTypeArgumentType(
                          type: rewriteClassReferencesToInterfaceReferences(
                            swidType: x.type,
                          ),
                          element: x.element,
                        ),
                      )
                      .toList(),
                ),
                onEnum: (val) => val,
                onVoid: (val) => val,
                onTypeParameter: (val) => val,
                onDynamic: (val) => val,
                onUnknown: (val) => val,
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
                  (x) => SwidTypeFormal.clone(
                    swidTypeFormal: x,
                    value: x.value.when(
                      fromString: (val) =>
                          SwidTypeFormalValue.fromString(string: val),
                      fromSwidClass: (val) => SwidTypeFormalValue.fromSwidClass(
                        swidClass: SwidClass.clone(
                          swidClass:
                              rewriteClassReferencesToInterfaceReferencesInClass(
                            swidClass: val,
                          ),
                          name: !isPrimitive(
                                  swidType:
                                      SwidType.fromSwidClass(swidClass: val))
                              ? rewriteReferenceName(
                                  swidType: SwidType.fromSwidClass(
                                    swidClass: val,
                                  ),
                                )
                              : val.name,
                        ),
                      ),
                      fromSwidInterface: (val) =>
                          SwidTypeFormalValue.fromSwidInterface(
                        swidInterface:
                            rewriteClassReferencesToInterfaceReferences(
                          swidType:
                              SwidType.fromSwidInterface(swidInterface: val),
                        ).when(
                          fromSwidInterface: (val) => val,
                          fromSwidClass: (_) => dartUnknownInterface,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownInterface,
                          fromSwidFunctionType: (_) => dartUnknownInterface,
                        ),
                      ),
                      fromSwidFunctionType: (val) =>
                          SwidTypeFormalValue.fromSwidFunctionType(
                        swidFunctionType: SwidFunctionType.clone(
                          swidFunctionType: val,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            factoryConstructors: val.factoryConstructors
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                      swidFunctionType: x,
                    ))
                .toList(),
            staticMethods: val.staticMethods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                      swidFunctionType: x,
                    ))
                .toList(),
            methods: val.methods
                .map((x) =>
                    rewriteClassReferencesToInterfaceReferencesInFunction(
                      swidFunctionType: x,
                    ))
                .toList(),
            instanceFieldDeclarations: Map.fromEntries(
              val.instanceFieldDeclarations.entries
                  .map((x) => MapEntry(
                      x.key,
                      rewriteClassReferencesToInterfaceReferences(
                        swidType: x.value,
                      )))
                  .toList(),
            ),
            extendedClass: val.extendedClass != null
                ? rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: val.extendedClass!)
                : null,
            implementedClasses: val.implementedClasses
                .map((x) => rewriteClassReferencesToInterfaceReferencesInClass(
                      swidClass: x,
                    ))
                .toList(),
            mixedInClasses: val.mixedInClasses
                .map((x) => rewriteClassReferencesToInterfaceReferencesInClass(
                      swidClass: x,
                    ))
                .toList()),
      ),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
        swidDefaultFormalParameter: SwidDefaultFormalParameter.clone(
          swidDefaultFormalParameter: val,
          value: val.value.when(
            fromSwidStaticConstTopLevelVariableReference: (val) =>
                SwidStaticConst.fromSwidStaticConstTopLevelVariableReference(
              swidStaticConstTopLevelVariableReference: val,
            ),
            fromSwidBooleanLiteral: (val) =>
                SwidStaticConst.fromSwidBooleanLiteral(
              swidBooleanLiteral: val,
            ),
            fromSwidStringLiteral: (val) =>
                SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: val,
            ),
            fromSwidIntegerLiteral: (val) =>
                SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: val,
            ),
            fromDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
              swidDoubleLiteral: val,
            ),
            fromSwidStaticConstFunctionInvocation: (val) =>
                SwidStaticConst.fromSwidStaticConstFunctionInvocation(
              staticConstFunctionInvocation: val,
            ),
            fromSwidStaticConstFieldReference: (val) =>
                SwidStaticConst.fromSwidStaticConstFieldReference(
              swidStaticConstFieldReference: val,
            ),
            fromSwidStaticConstPrefixedExpression: (val) =>
                SwidStaticConst.fromSwidStaticConstPrefixedExpression(
              swidStaticConstPrefixedExpression: val,
            ),
            fromSwidStaticConstBinaryExpression: (val) =>
                SwidStaticConst.fromSwidStaticConstBinaryExpression(
              swidStaticConstBinaryExpression: val,
            ),
            fromSwidStaticConstPrefixedIdentifier: (val) =>
                SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
              staticConstPrefixedIdentifier: val,
            ),
            fromSwidStaticConstIdentifier: (val) =>
                SwidStaticConst.fromSwidStaticConstIdentifier(
              staticConstIdentifier: val,
            ),
            fromSwidStaticConstListLiteral: (val) =>
                SwidStaticConst.fromSwidStaticConstListLiteral(
              staticConstListLiteral: SwidStaticConstListLiteral.clone(
                swidStaticConstListLiteral: val,
                staticType: rewriteClassReferencesToInterfaceReferences(
                  swidType: val.staticType,
                ),
              ),
            ),
            fromSwidStaticConstMapLiteralEntry: (val) =>
                SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
              swidStaticConstMapLiteralEntry: val.clone(),
            ),
            fromSwidStaticConstMapLiteral: (val) =>
                SwidStaticConst.fromSwidStaticConstMapLiteral(
              swidStaticConstMapLiteral: val.clone(
                staticType: rewriteClassReferencesToInterfaceReferences(
                  swidType: val.staticType,
                ),
              ),
            ),
          ),
        ),
      ),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
        swidFunctionType: SwidFunctionType.clone(
          swidFunctionType: val,
          returnType: rewriteClassReferencesToInterfaceReferences(
            swidType: val.returnType,
          ),
          normalParameterTypes: val.normalParameterTypes
              .map((x) => rewriteClassReferencesToInterfaceReferences(
                    swidType: x,
                  ))
              .toList(),
          optionalParameterTypes: val.optionalParameterTypes
              .map((x) => rewriteClassReferencesToInterfaceReferences(
                    swidType: x,
                  ))
              .toList(),
          namedParameterTypes: Map.fromEntries(
            val.namedParameterTypes.entries
                .map(
                  (x) => MapEntry(
                    x.key,
                    rewriteClassReferencesToInterfaceReferences(
                      swidType: x.value,
                    ),
                  ),
                )
                .toList(),
          ),
          namedDefaults: val.namedDefaults.map(
            (key, value) => MapEntry(
              key,
              SwidDefaultFormalParameter.clone(
                swidDefaultFormalParameter: value,
                value: value.value.when(
                  fromSwidStaticConstTopLevelVariableReference: (val) =>
                      SwidStaticConst
                          .fromSwidStaticConstTopLevelVariableReference(
                    swidStaticConstTopLevelVariableReference: val,
                  ),
                  fromSwidBooleanLiteral: (val) =>
                      SwidStaticConst.fromSwidBooleanLiteral(
                    swidBooleanLiteral: val,
                  ),
                  fromSwidStringLiteral: (val) =>
                      SwidStaticConst.fromSwidStringLiteral(
                    swidStringLiteral: val,
                  ),
                  fromSwidIntegerLiteral: (val) =>
                      SwidStaticConst.fromSwidIntegerLiteral(
                    swidIntegerLiteral: val,
                  ),
                  fromDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
                    swidDoubleLiteral: val,
                  ),
                  fromSwidStaticConstFunctionInvocation: (val) =>
                      SwidStaticConst.fromSwidStaticConstFunctionInvocation(
                    staticConstFunctionInvocation: val,
                  ),
                  fromSwidStaticConstFieldReference: (val) =>
                      SwidStaticConst.fromSwidStaticConstFieldReference(
                    swidStaticConstFieldReference: val,
                  ),
                  fromSwidStaticConstPrefixedExpression: (val) =>
                      SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                    swidStaticConstPrefixedExpression: val,
                  ),
                  fromSwidStaticConstBinaryExpression: (val) =>
                      SwidStaticConst.fromSwidStaticConstBinaryExpression(
                    swidStaticConstBinaryExpression: val,
                  ),
                  fromSwidStaticConstPrefixedIdentifier: (val) =>
                      SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                    staticConstPrefixedIdentifier: val,
                  ),
                  fromSwidStaticConstIdentifier: (val) =>
                      SwidStaticConst.fromSwidStaticConstIdentifier(
                    staticConstIdentifier: val,
                  ),
                  fromSwidStaticConstListLiteral: (val) =>
                      SwidStaticConst.fromSwidStaticConstListLiteral(
                    staticConstListLiteral: SwidStaticConstListLiteral.clone(
                      swidStaticConstListLiteral: val,
                      staticType: rewriteClassReferencesToInterfaceReferences(
                        swidType: val.staticType,
                      ),
                    ),
                  ),
                  fromSwidStaticConstMapLiteralEntry: (val) =>
                      SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
                    swidStaticConstMapLiteralEntry: val,
                  ),
                  fromSwidStaticConstMapLiteral: (val) =>
                      SwidStaticConst.fromSwidStaticConstMapLiteral(
                    swidStaticConstMapLiteral: val.clone(
                      staticType: rewriteClassReferencesToInterfaceReferences(
                        swidType: val.staticType,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
