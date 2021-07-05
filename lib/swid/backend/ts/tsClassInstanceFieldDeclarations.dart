import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

class TsClassInstanceFieldDeclarations {
  final SwidClass swidClass;

  const TsClassInstanceFieldDeclarations({
    required this.swidClass,
  });

  String toTsSource() => (swidClass.instanceFieldDeclarations.isNotEmpty)
      ? [
            ...swidClass.instanceFieldDeclarations.entries
                .map((x) =>
                    "    public readonly ${x.key}: ${transformTypeDeclarationToTs(parentClass: swidClass, swidType: x.value)} = undefined as any;")
                .toList()
          ].join("\n") +
          "\n"
      : "";
}
