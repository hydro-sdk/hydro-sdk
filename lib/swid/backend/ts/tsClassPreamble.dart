import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeFormalsToTs.dart';

class TsClassPreamble {
  final SwidClass swidClass;

  const TsClassPreamble({
    required this.swidClass,
  });

  String toTsSource() => ([
        "export class ${swidClass.name}",
        transformTypeFormalsToTs(swidTypeFormals: swidClass.typeFormals),
        ...((({
          required List<SwidClass> superInterfaces,
        }) =>
            superInterfaces.isNotEmpty
                ? [
                    " implements ",
                    superInterfaces
                        .map(
                          (x) => transformPrimitiveNamesToTs(
                            swidType: SwidType.fromSwidClass(
                              swidClass: x,
                            ),
                          ).when(
                            fromSwidInterface: (_) => dartUnknownClass,
                            fromSwidClass: (val) => val,
                            fromSwidDefaultFormalParameter: (_) =>
                                dartUnknownClass,
                            fromSwidFunctionType: (_) => dartUnknownClass,
                          ),
                        )
                        .map((x) => !x.hasSyntheticAccessors()
                            ? [
                                "I",
                                x.displayName,
                              ].join("")
                            : [
                                "Omit",
                                "<",
                                [
                                  "I",
                                  x.displayName,
                                ].join(""),
                                ", ",
                                x
                                    .syntheticAccessors()
                                    .map((x) => "\"${x.name}\"")
                                    .join(" | "),
                                ">",
                              ].join(""))
                        .join(", ")
                  ]
                : [])(
          superInterfaces: [
            swidClass.extendedClass != null &&
                    !isClassDartObject(
                      swidClass: swidClass.extendedClass!,
                    )
                ? swidClass.extendedClass
                : null,
            ...swidClass.mixedInClasses.where(
              (x) => !isClassDartObject(
                swidClass: x,
              ),
            ),
            ...swidClass.implementedClasses.where(
              (x) => !isClassDartObject(
                swidClass: x,
              ),
            )
          ].where((x) => x != null).toList().cast<SwidClass>(),
        )),
        "{"
      ]..removeWhere((x) => x == null))
          .join("\n");
}
