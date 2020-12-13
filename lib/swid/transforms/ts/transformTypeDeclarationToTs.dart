import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:meta/meta.dart';

String transformTypeDeclarationToTs({
  @required SwidType swidType,
  bool emitTrailingReturnType = true,
  bool emitDefaultFormalsAsOptionalNamed = false,
  TrailingReturnTypeKind topLevelTrailingReturnTypeKind =
      TrailingReturnTypeKind.fatArrow,
  TrailingReturnTypeKind nestedTrailingReturnTypeKind =
      TrailingReturnTypeKind.fatArrow,
}) =>
    removeNullabilitySuffixFromTypeNames(
            swidType: transformPrimitiveNamesToTs(swidType: swidType))
        .when(
            fromSwidInterface: (val) =>
                removeTypeArguments(str: val.name) +
                (val.typeArguments.isNotEmpty
                    ? "<" +
                        val.typeArguments
                            .map((x) => transformTypeDeclarationToTs(
                                  swidType: x,
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
            fromSwidClass: (_) => "",
            fromSwidDefaultFormalParameter: (val) => val.name,
            fromSwidFunctionType: (val) => transformFunctionTypeToTs(
                swidFunctionType: val,
                emitTrailingReturnType: emitTrailingReturnType,
                emitDefaultFormalsAsOptionalNamed:
                    emitDefaultFormalsAsOptionalNamed,
                trailingReturnTypeKind: topLevelTrailingReturnTypeKind)) +
    (swidType.nullabilitySuffix == SwidNullabilitySuffix.question
        ? " | undefined"
        : "");
