import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/transformIllegalParameterNames.dart';

String transformTypeDeclarationToTs({
  required final SwidType swidType,
  required final SwidClass? parentClass,
  bool emitTrailingReturnType = true,
  bool emitDefaultFormalsAsOptionalNamed = false,
  bool emitTopLevelInitializersForOptionalPositionals = false,
  TrailingReturnTypeKind topLevelTrailingReturnTypeKind =
      TrailingReturnTypeKind.fatArrow,
  TrailingReturnTypeKind nestedTrailingReturnTypeKind =
      TrailingReturnTypeKind.fatArrow,
}) =>
    ((String transformedType) =>
        transformedType +
        (swidType.nullabilitySuffix == SwidNullabilitySuffix.question
            ? " | undefined"
            : ""))(
      !isPrimitiveMap(swidType: swidType)
          ? removeNullabilitySuffixFromTypeNames(
                  swidType: transformPrimitiveNamesToTs(swidType: swidType))
              .when(
              fromSwidInterface: ((val) =>
                  narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: val,
                    onPrimitive: (val) => val.name,
                    onClass: (val) =>
                        removeTypeArguments(str: val.name) +
                        (val.typeArguments.isNotEmpty
                            ? "<" +
                                val.typeArguments
                                    .map((x) => transformTypeDeclarationToTs(
                                          swidType: x,
                                          parentClass: parentClass,
                                          emitTrailingReturnType:
                                              emitTrailingReturnType,
                                          emitDefaultFormalsAsOptionalNamed:
                                              emitDefaultFormalsAsOptionalNamed,
                                          topLevelTrailingReturnTypeKind:
                                              nestedTrailingReturnTypeKind,
                                          nestedTrailingReturnTypeKind:
                                              nestedTrailingReturnTypeKind,
                                        ))
                                    .toList()
                                    .join(", ") +
                                ">"
                            : ""),
                    onEnum: (val) => val.name,
                    onVoid: (val) => val.name,
                    onTypeParameter: (val) =>
                        removeTypeArguments(str: val.name) +
                        (val.typeArguments.isNotEmpty
                            ? "<" +
                                val.typeArguments
                                    .map((x) => transformTypeDeclarationToTs(
                                          swidType: x,
                                          parentClass: parentClass,
                                          emitTrailingReturnType:
                                              emitTrailingReturnType,
                                          emitDefaultFormalsAsOptionalNamed:
                                              emitDefaultFormalsAsOptionalNamed,
                                          topLevelTrailingReturnTypeKind:
                                              nestedTrailingReturnTypeKind,
                                          nestedTrailingReturnTypeKind:
                                              nestedTrailingReturnTypeKind,
                                        ))
                                    .toList()
                                    .join(", ") +
                                ">"
                            : ""),
                    onDynamic: (val) => "any",
                    onUnknown: (_) => "unknown",
                  )),
              fromSwidClass: (_) => "",
              fromSwidDefaultFormalParameter: (val) =>
                  !emitTopLevelInitializersForOptionalPositionals
                      ? val.staticType.name
                      : transformLiteralToTs(
                          swidLiteral: val.value,
                          parentClass: parentClass,
                          inexpressibleFunctionInvocationFallback:
                              makeDefaultInexpressibleFunctionInvocationFallback(
                            parentClass: parentClass,
                            name: "",
                          ),
                          scopeResolver:
                              makeDefaultStaticConstFieldReferenceScopeResolver(
                            parentClass: parentClass,
                          ),
                        ),
              fromSwidFunctionType: (val) => transformFunctionTypeToTs(
                swidFunctionType: transformIllegalParameterNames(
                  swidFunctionType: val,
                ),
                parentClass: parentClass,
                emitInitializersForOptionalPositionals:
                    emitTopLevelInitializersForOptionalPositionals,
                emitTrailingReturnType: emitTrailingReturnType,
                emitDefaultFormalsAsOptionalNamed:
                    emitDefaultFormalsAsOptionalNamed,
                trailingReturnTypeKind: topLevelTrailingReturnTypeKind,
              ),
            )
          : (swidType.when(
              fromSwidInterface: (val) =>
                  "{[index: " +
                  transformTypeDeclarationToTs(
                    parentClass: parentClass,
                    swidType: transformPrimitiveNamesToTs(
                      swidType: val.typeArguments.first,
                    ),
                  ) +
                  "]: " +
                  transformTypeDeclarationToTs(
                    parentClass: parentClass,
                    swidType: val.typeArguments.last,
                  ) +
                  "}",
              fromSwidClass: (_) => "",
              fromSwidDefaultFormalParameter: (_) => "",
              fromSwidFunctionType: (_) => "",
            )),
    );
