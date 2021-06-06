import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

class TsFunctionDefaultNamedProps {
  final SwidFunctionType swidFunctionType;

  const TsFunctionDefaultNamedProps({
    required this.swidFunctionType,
  });

  String toTsSource() => swidFunctionType.namedDefaultParameters.isNotEmpty
      ? "const ${TsFunctionDefaultNamedPropsObjectName(swidFunctionType: swidFunctionType).toTsSource()} = {\n" +
          swidFunctionType.namedDefaultParameters.entries
              .map((x) =>
                  "    ${x.key}: " +
                  "${transformTypeDeclarationToTs(swidType: SwidType.fromSwidDefaultFormalParameter(swidDefaultFormalParameter: x.value))}")
              .toList()
              .join(",\n") +
          "\n};\n"
      : "";
}
