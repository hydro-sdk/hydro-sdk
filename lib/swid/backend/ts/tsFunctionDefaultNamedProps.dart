import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

class TsFunctionDefaultNamedProps {
  final SwidFunctionType swidFunctionType;

  const TsFunctionDefaultNamedProps({
    required final this.swidFunctionType,
  });

  String toTsSource() => swidFunctionType.namedDefaultParameters.isNotEmpty
      ? "const ${TsFunctionDefaultNamedPropsObjectName(swidFunctionType: swidFunctionType).toTsSource()} = {\n" +
          swidFunctionType.namedDefaultParameters.entries
              .map((x) => !isInexpressibleStaticConst(
                    parentClass: null,
                    staticConst: x.value.value,
                  )
                      ? [
                          "    ${x.key}: ",
                          transformTypeDeclarationToTs(
                            parentClass: null,
                            emitTopLevelInitializersForOptionalPositionals:
                                true,
                            swidType:
                                rewriteClassReferencesToInterfaceReferences(
                              swidType: SwidType.fromSwidDefaultFormalParameter(
                                swidDefaultFormalParameter: x.value,
                              ),
                            ),
                          ),
                          ",",
                        ].join()
                      : "")
              .toList()
              .join("\n") +
          "\n};\n"
      : "";
}
