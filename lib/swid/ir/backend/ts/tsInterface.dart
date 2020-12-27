import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType> members;
  final List<String> superInterfaces;

  TsInterface({
    @required this.name,
    @required this.members,
    this.superInterfaces = const [],
  });

  factory TsInterface.fromSwidClass({@required SwidClass swidClass}) =>
      TsInterface(
          name: swidClass.name,
          members: {
            ...Map.fromEntries(swidClass.instanceFieldDeclarations.entries
                .map((x) => MapEntry(x.key, x.value))
                .toList()),
            ...Map.fromEntries(swidClass.methods
                .map((x) => MapEntry(
                    x.name, SwidType.fromSwidFunctionType(swidFunctionType: x)))
                .toList()),
          },
          superInterfaces: ([
            swidClass.extendedClass != null
                ? "I${swidClass.extendedClass.name}"
                : null
          ]..removeWhere((x) => x == null)));

  String toTsSource() => (members?.isNotEmpty ?? false)
      ? ([
          "export interface $name",
          ...(superInterfaces.isNotEmpty
              ? ["extends", superInterfaces.map((x) => x).toList().join(", ")]
              : []),
          "{",
          ...members.entries
              .map((x) =>
                  "${x.key}: ${transformTypeDeclarationToTs(swidType: x.value)};")
              .toList(),
          "}"
        ]..removeWhere((x) => x == null))
          .join("\n")
      : "";
}
