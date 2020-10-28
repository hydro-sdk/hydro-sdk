import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';
import 'package:meta/meta.dart';

class TsClassInstanceFieldDeclarations {
  final SwidClass swidClass;

  TsClassInstanceFieldDeclarations({@required this.swidClass});

  String toTsSource() =>
      (swidClass.instanceFieldDeclarations?.isNotEmpty ?? false)
          ? [
                ...swidClass.instanceFieldDeclarations.entries
                    .map((x) =>
                        "    public readonly ${x.key}: ${transformTypeDeclarationToTs(swidType: transformPrimitiveNamesToTs(swidType: x.value))};")
                    .toList()
              ].join("\n") +
              "\n"
          : "";
}
