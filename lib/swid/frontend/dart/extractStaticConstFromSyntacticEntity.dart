import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:analyzer/dart/element/element.dart' show ClassElement;
import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowStaticConstSyntacticEntity.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDoubleLiteralFromDoubleLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidIntegerLiteralFromIntegerLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromClassElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFunctionInvocationFromInstanceCreationExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstPrefixedIdentifierFromPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStringLiteralFromSimpleStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstTopLevelVariableReference.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;

import 'package:analyzer/src/dart/element/element.dart'
    show
        PropertyAccessorElementImpl_ImplicitGetter,
        ConstTopLevelVariableElementImpl;

SwidStaticConst extractStaticConstFromSyntacticEntity({
  required final SyntacticEntity syntacticEntity,
  required final bool buildElements,
}) =>
    narrowStaticConstSyntacticEntity(
      syntacticEntity: syntacticEntity,
      onIntegerLiteral: (val) => SwidStaticConst.fromSwidIntegerLiteral(
          swidIntegerLiteral:
              swidIntegerLiteralFromIntegerLiteral(integerLiteral: val)),
      onStringLiteral: (val) => val.stringValue != null
          ? SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: SwidStringLiteral(
                value: val.stringValue!,
              ),
            )
          : dartUnknownConst,
      onBooleanLiteral: (val) => SwidStaticConst.fromSwidBooleanLiteral(
          swidBooleanLiteral: SwidBooleanLiteral(value: val.value.toString())),
      onSimpleStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: swidStringLiteralFromSimpleStringLiteral(
              simpleStringLiteral: val)),
      onDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
          swidDoubleLiteral:
              swidDoubleLiteralFromDoubleLiteral(doubleLiteral: val)),
      onPrefixedIdentifier: (val) => val.staticElement != null &&
              val.staticElement is PropertyAccessorElementImpl_ImplicitGetter &&
              (val.staticElement as PropertyAccessorElementImpl_ImplicitGetter)
                  .variable is ConstTopLevelVariableElementImpl
          ? SwidStaticConst.fromSwidStaticConstTopLevelVariableReference(
              swidStaticConstTopLevelVariableReference:
                  SwidStaticConstTopLevelVariableReference(
                identifier: val.staticElement!.displayName,
                topLevelReference: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    originalPackagePath: mapClassLibrarySourcePath(
                      element: val.staticElement!,
                    ),
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    name: val.staticElement!.displayName,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    typeArguments: [],
                  ),
                ),
              ),
            )
          : SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
              staticConstPrefixedIdentifier:
                  swidStaticConstPrefixedIdentifierFromPrefixedIdentifier(
                      prefixedIdentifier: val),
            ),
      onSimpleIdentifier: (val) => !val.inDeclarationContext() &&
              val.staticElement != null &&
              val.staticElement is PropertyAccessorElementImpl_ImplicitGetter &&
              val.staticElement!.enclosingElement is ClassElement
          ? SwidStaticConst.fromSwidStaticConstIdentifier(
              staticConstIdentifier: SwidStaticConstIdentifier(
                identifier: val.name,
                enclosingType: SwidType.fromSwidInterface(
                  swidInterface: swidInterfaceFromClassElement(
                    classElement:
                        val.staticElement!.enclosingElement as ClassElement,
                  ),
                ),
              ),
            )
          : val.unParenthesized.staticType != null &&
                  val.unParenthesized.staticType is! FunctionType
              ? SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference:
                      SwidStaticConstFieldReference(name: val.name),
                )
              : dartUnknownConst,
      onPrefixExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstPrefixedExpression(
        swidStaticConstPrefixedExpression: SwidStaticConstPrefixedExpression(
          prefix: val.operator.lexeme,
          expression: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.operand,
            buildElements: buildElements,
          ),
        ),
      ),
      onInstanceCreationExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstFunctionInvocation(
        staticConstFunctionInvocation:
            swidStaticConstFunctionInvocationFromInstanceCreationExpression(
          instanceCreationExpression: val,
          buildElements: buildElements,
        ),
      ),
      onBinaryExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstBinaryExpression(
        swidStaticConstBinaryExpression: SwidStaticConstBinaryExpression(
          leftOperand: extractStaticConstFromSyntacticEntity(
              syntacticEntity: val.leftOperand, buildElements: buildElements),
          operator: val.operator.value() as String,
          rightOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.rightOperand,
            buildElements: buildElements,
          ),
        ),
      ),
      onListLiteral: (val) => SwidStaticConst.fromSwidStaticConstListLiteral(
        staticConstListLiteral: SwidStaticConstListLiteral(
          staticType: val.staticType != null && val.staticType is InterfaceType
              ? SwidType.fromSwidInterface(
                  swidInterface: swidInterfaceFromInterface(
                    interfaceType: val.staticType! as InterfaceType,
                    buildElements: buildElements,
                  ),
                )
              : dartUnknownType,
          elements: val.elements
              .map(
                (x) => extractStaticConstFromSyntacticEntity(
                  syntacticEntity: x,
                  buildElements: buildElements,
                ),
              )
              .toList(),
        ),
      ),
      onMapLiteralEntry: (val) =>
          SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
        swidStaticConstMapLiteralEntry: SwidStaticConstMapLiteralEntry(
          key: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.key,
            buildElements: buildElements,
          ),
          value: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.value,
            buildElements: buildElements,
          ),
        ),
      ),
      onSetOrMapLiteral: (val) => val.isMap
          ? SwidStaticConst.fromSwidStaticConstMapLiteral(
              swidStaticConstMapLiteral: SwidStaticConstMapLiteral(
                elements: val.elements
                    .map(
                      (x) => extractStaticConstFromSyntacticEntity(
                        syntacticEntity: x,
                        buildElements: buildElements,
                      ),
                    )
                    .map((x) => x.maybeWhen(
                          fromSwidStaticConstMapLiteralEntry: (val) => val,
                          orElse: () => null,
                        ))
                    .whereNotNull()
                    .toList(),
                staticType:
                    val.staticType != null && val.staticType is InterfaceType
                        ? SwidType.fromSwidInterface(
                            swidInterface: swidInterfaceFromInterface(
                              interfaceType: val.staticType! as InterfaceType,
                              buildElements: buildElements,
                            ),
                          )
                        : dartUnknownType,
              ),
            )
          : dartUnknownConst,
    ) ??
    dartUnknownConst;
