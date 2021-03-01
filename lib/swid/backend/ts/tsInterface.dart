import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType> members;
  final List<String> superInterfaces;
  final List<SwidTypeFormal> typeFormals;
  final bool emitSuperInterfaceExtensions;

  TsInterface({
    @required this.name,
    @required this.members,
    @required this.emitSuperInterfaceExtensions,
    this.superInterfaces = const [],
    this.typeFormals = const [],
  });

  factory TsInterface.fromSwidClass(
          {@required SwidClass swidClass,
          @required bool emitSuperInterfaceExtensions}) =>
      TsInterface(
        name: swidClass.name,
        emitSuperInterfaceExtensions: emitSuperInterfaceExtensions,
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
        ]..removeWhere(
            (x) => x == null,
          )),
        typeFormals: List.from(swidClass.typeFormals),
      );

  String toTsSource() => ([
        "export interface $name",
        transformTypeFormalsToTs(swidTypeFormals: typeFormals),
        ...(emitSuperInterfaceExtensions
            ? superInterfaces.isNotEmpty
                ? ["extends", superInterfaces.map((x) => x).toList().join(", ")]
                : []
            : []),
        "{",
        ...members.entries
            .map((x) =>
                "${x.key}: ${transformTypeDeclarationToTs(swidType: x.value)};")
            .toList(),
        "}"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
