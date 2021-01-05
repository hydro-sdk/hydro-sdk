import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

class TsClassMethodInjectionFieldDeclarations {
  final SwidClass swidClass;

  TsClassMethodInjectionFieldDeclarations({@required this.swidClass});

  String toTsSource() => (swidClass.methods.isNotEmpty ?? false)
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
                      swidFunctionType:
                          rewriteClassReferencesToInterfaceReferencesInFunction(
                              swidFunctionType: x),
                      trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
                    ) +
                    " = undefined as any;")
                .toList()
          ].join("\n") +
          "\n"
      : "";
}
