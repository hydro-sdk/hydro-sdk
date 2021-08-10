import 'package:hydro_sdk/swid/backend/ts/tsSuperClassClause.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsInterface {
  final String name;
  final Map<String, SwidType?> members;
  final List<SwidTypeFormal> typeFormals;
  final bool emitSuperInterfaceExtensions;
  final String superClause;

  const TsInterface({
    required final this.name,
    required final this.members,
    required final this.emitSuperInterfaceExtensions,
    this.typeFormals = const [],
    this.superClause = "",
  });

  factory TsInterface.fromSwidClass({
    required final SwidClass swidClass,
    required final bool emitSuperInterfaceExtensions,
  }) =>
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
        typeFormals: List.from(swidClass.typeFormals),
        superClause: TsSuperClassClause(
          swidClass: swidClass,
          clauseKeyword: "extends",
        ).toTsSource(),
      );

  String toTsSource() => ([
        "export interface $name",
        transformTypeFormalsToTs(swidTypeFormals: typeFormals),
        emitSuperInterfaceExtensions ? superClause : "",
        "{",
        ...members.entries
            .map((x) =>
                "${x.key}: ${transformTypeDeclarationToTs(parentClass: null, swidType: x.value!)};")
            .toList(),
        "}"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
