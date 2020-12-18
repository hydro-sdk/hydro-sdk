import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
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

  factory TsInterface.fromSwidClass({@required SwidClass swidClass}) =>
      TsInterface(name: swidClass.name, members: {
        ...Map.fromEntries(swidClass.instanceFieldDeclarations.entries
            .map((x) => MapEntry(x.key, x.value))
            .toList()),
        ...Map.fromEntries(swidClass.methods
            .map((x) => MapEntry(
                x.name, SwidType.fromSwidFunctionType(swidFunctionType: x)))
            .toList()),
      });

  String toTsSource() => (members?.isNotEmpty ?? false)
      ? [
          "export interface $name {",
          ...members.entries
              .map((x) =>
                  "${x.key}: ${transformTypeDeclarationToTs(swidType: x.value)};")
              .toList(),
          "}"
        ].join("\n")
      : "";
}
