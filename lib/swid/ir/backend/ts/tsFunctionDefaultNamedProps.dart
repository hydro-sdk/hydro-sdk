import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionDefaultNamedPropsObjectName.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsFunctionDefaultNamedProps {
  final SwidFunctionType swidFunctionType;

  TsFunctionDefaultNamedProps({@required this.swidFunctionType});

  String toTsSource() => swidFunctionType.namedDefaults.isNotEmpty
      ? "const ${TsFunctionDefaultNamedPropsObjectName(swidFunctionType: swidFunctionType).toTsSource()} = {\n" +
          swidFunctionType.namedDefaults.entries
              .map((x) =>
                  "    ${x.key}: " +
                  "${transformTypeDeclarationToTs(swidType: SwidType.fromSwidDefaultFormalParameter(swidDefaultFormalParameter: x.value))},\n")
              ?.toList()
              ?.join("\n") +
          "};\n"
      : "";
}
