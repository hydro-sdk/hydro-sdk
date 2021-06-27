import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsClassPreamble {
  final SwidClass swidClass;
  final List<String?> superInterfaces;

  TsClassPreamble({
    required this.swidClass,
  }) : superInterfaces = ([
          swidClass.extendedClass != null &&
                  !isClassDartObject(
                    swidClass: swidClass.extendedClass!,
                  )
              ? [
                  "I",
                  transformPrimitiveNamesToTs(
                    swidType: SwidType.fromSwidClass(
                      swidClass: swidClass.extendedClass!,
                    ),
                  ).displayName,
                ].join("")
              : null,
          ...swidClass.mixedInClasses
              .where((x) => !isClassDartObject(
                    swidClass: x,
                  ))
              .map(
                (x) => transformPrimitiveNamesToTs(
                  swidType: SwidType.fromSwidClass(
                    swidClass: x,
                  ),
                ),
              )
              .map((x) => "I${x.displayName}")
              .toList(),
          ...swidClass.implementedClasses
              .where((x) => !isClassDartObject(
                    swidClass: x,
                  ))
              .map(
                (x) => transformPrimitiveNamesToTs(
                  swidType: SwidType.fromSwidClass(
                    swidClass: x,
                  ),
                ),
              )
              .map((x) => "I${x.displayName}")
              .toList()
        ]..removeWhere((x) => x == null));

  String toTsSource() => ([
        "export class ${swidClass.name}",
        transformTypeFormalsToTs(swidTypeFormals: swidClass.typeFormals),
        ...(superInterfaces.isNotEmpty
            ? ["implements", superInterfaces.map((x) => x).toList().join(", ")]
            : []),
        "{"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
