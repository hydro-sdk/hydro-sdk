import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType> members;

  TsInterface({
    @required this.name,
    @required this.members,
  });

  factory TsInterface.fromSwidFunctiontype(
      {@required SwidFunctionType swidFunctionType, String name}) {
    return TsInterface(
      name: "${name ?? swidFunctionType.name}Props",
      members: Map.from(swidFunctionType.namedParameterTypes),
    );
  }

  String toTsSource() => (members?.isNotEmpty ?? false)
      ? [
          "export $name {",
          ...members.entries
              .map((x) =>
                  "${x.key}: ${transformTypeDeclarationToTs(swidType: x.value)};")
              .toList()
        ].join("\n")
      : "";
}
