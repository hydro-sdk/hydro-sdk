import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/transformIllegalParameterNames.dart';

class TsClassMethodDeclarations {
  final SwidClass swidClass;

  const TsClassMethodDeclarations({
    required final this.swidClass,
  });

  String toTsSource() => (swidClass.methods.isNotEmpty)
      ? [
            ...tsClassMethodInjectionCandidates(
                    swidFunctionTypes: swidClass.methods)
                .map((x) => [
                      "public ${x.name}",
                      transformTypeDeclarationToTs(
                        parentClass: swidClass,
                        emitTrailingReturnType: true,
                        emitDefaultFormalsAsOptionalNamed: true,
                        emitTopLevelInitializersForOptionalPositionals: true,
                        topLevelTrailingReturnTypeKind:
                            TrailingReturnTypeKind.colon,
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType:
                              rewriteClassReferencesToInterfaceReferencesInFunction(
                            swidFunctionType: x,
                          ),
                        ),
                      ),
                      " {\n",
                      ...(x.declarationModifiers.overridenTransforms
                                  .firstWhereOrNull(
                                      (k) => k == "tsClassMethodDeclaration") ==
                              null
                          ? [
                              "    return ",
                              TsFunctionSelfBindingInvocation(
                                functionReference: "this." +
                                    TsClassMethodInjectionFieldName(
                                      swidFunctionType: x,
                                    ).toTsSource(),
                                swidFunctionType:
                                    transformIllegalParameterNames(
                                  swidFunctionType: x,
                                ),
                              ).toTsSource(),
                            ]
                          : [
                              x.declarationModifiers.overridenTransforms
                                  .firstWhere(
                                      (k) => k == "tsClassMethodDeclaration")
                                  .item2
                            ]),
                      "\n}",
                    ].join(""))
          ].join("\n") +
          "\n"
      : "";
}
