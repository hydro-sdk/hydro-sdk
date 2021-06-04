import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';

String transformTypeDeclarationToTs({
  required SwidType swidType,
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
            : ""))(!isPrimitiveMap(swidType: swidType)
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
                                            swidType: x!,
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
                                            swidType: x!,
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
                    )!) as String Function(SwidInterface),
                fromSwidClass: (_) => "",
                fromSwidDefaultFormalParameter: (val) => val.name,
                fromSwidFunctionType: (val) => transformFunctionTypeToTs(
                    swidFunctionType: val,
                    emitInitializersForOptionalPositionals:
                        emitTopLevelInitializersForOptionalPositionals,
                    emitTrailingReturnType: emitTrailingReturnType,
                    emitDefaultFormalsAsOptionalNamed:
                        emitDefaultFormalsAsOptionalNamed,
                    trailingReturnTypeKind: topLevelTrailingReturnTypeKind))
        : (swidType.when(
            fromSwidInterface: (val) =>
                "{[index: " +
                transformTypeDeclarationToTs(
                    swidType: transformPrimitiveNamesToTs(
                        swidType: val.typeArguments.first!)) +
                "]: " +
                transformTypeDeclarationToTs(swidType: val.typeArguments.last!) +
                "}",
            fromSwidClass: (_) => "",
            fromSwidDefaultFormalParameter: (_) => "",
            fromSwidFunctionType: (_) => "",
          )));
