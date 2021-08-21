import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/conflictingInstanceMembers.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';

class TsSuperClassClause {
  final SwidClass swidClass;
  final String clauseKeyword;

  const TsSuperClassClause({
    required final this.swidClass,
    required final this.clauseKeyword,
  });

  String toTsSource() => [
        ...((({
          required final List<SwidClass> superInterfaces,
        }) =>
            superInterfaces.isNotEmpty
                ? [
                    " ",
                    clauseKeyword,
                    " ",
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
                        .map((x) => (!x.hasSyntheticAccessors() &&
                                !x.hasMixinApplicationThatConflictsWithSuperClassOrInterface())
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
                                [
                                  ...x
                                      .syntheticAccessors()
                                      .map((x) => "\"${x.name}\""),
                                  ...((({
                                    required final List<List<String>>
                                        intersectedMembers,
                                  }) =>
                                      intersectedMembers.isNotEmpty
                                          ? intersectedMembers
                                              .reduce((value, element) => [
                                                    ...value,
                                                    ...element,
                                                  ])
                                          : <String>[])(
                                    intersectedMembers: swidClass.mixedInClasses
                                        .map(
                                          (k) => conflictingInstanceMembers(
                                            first: SwidClass.mergeSuperClasses(
                                              swidClass: x,
                                            ),
                                            second: SwidClass.mergeSuperClasses(
                                              swidClass: k,
                                            ),
                                          ),
                                        )
                                        .map((k) => [
                                              ...k.methods,
                                              ...k.instanceFields,
                                            ])
                                        .toList(),
                                  )).map((x) => "\"$x\"")
                                ].toSet().toList().join(" | "),
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
      ].join("");
}
