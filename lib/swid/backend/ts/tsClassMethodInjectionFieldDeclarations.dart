import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionCandidates.dart';
import 'package:hydro_sdk/swid/backend/ts/tsClassMethodInjectionFieldName.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

class TsClassMethodInjectionFieldDeclarations {
  final SwidClass swidClass;

  const TsClassMethodInjectionFieldDeclarations({
    required this.swidClass,
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
