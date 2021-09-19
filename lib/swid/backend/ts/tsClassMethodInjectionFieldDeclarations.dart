import 'package:hydro_sdk/swid/backend/ts/analyses/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

import 'package:freezed_annotation/freezed_annotation.dart';


class TsClassMethodInjectionFieldDeclarations {
  final SwidClass swidClass;

  const TsClassMethodInjectionFieldDeclarations({
    required final this.swidClass,
  });

  String toTsSource() => (swidClass.methods.isNotEmpty)
      ? [
            ...tsClassMethodInjectionCandidates(
                    swidFunctionTypes: swidClass.methods)
                .map((x) =>
                    "    private readonly " +
                    TsClassMethodInjectionFieldName(
                            swidFunctionType:
                                rewriteClassReferencesToInterfaceReferencesInFunction(
                                    swidFunctionType: x))
                        .toTsSource() +
                    ": " +
                    transformFunctionTypeToTs(
                      parentClass: swidClass,
                      swidFunctionType:
                          rewriteClassReferencesToInterfaceReferencesInFunction(
                        swidFunctionType: x,
                      ),
                      trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
                    ) +
                    " = undefined as any;")
                .toList()
          ].join("\n") +
          "\n"
      : "";
}
