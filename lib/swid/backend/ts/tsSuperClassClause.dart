import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/conflictingInstanceMembers.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsSuperClassClause.freezed.dart';

@freezed
class TsSuperClassClause
    with
        _$TsSuperClassClause,
        HashKeyMixin<TsSuperClassClause>,
        HashComparableMixin<TsSuperClassClause>,
        SwarsTransformMixin<TsSuperClassClause,
            $TsSuperClassClauseCopyWith<TsSuperClassClause>, String>,
        SwarsTermStringResultMixin {
  TsSuperClassClause._();

  factory TsSuperClassClause({
    required final SwidClass swidClass,
    required final String clauseKeyword,
  }) = _$TsSuperClassClauseCtor;

  @override
  String get cacheGroup => "tsSuperClassClause";

  @override
  List<int> get hashableParts => [
        ...swidClass.hashableParts,
        ...clauseKeyword.hashableParts,
      ];

  @override
  TsSuperClassClause clone({
    final SwidClass? swidClass,
    final String? clauseKeyword,
  }) =>
      TsSuperClassClause(
        swidClass: swidClass ?? this.swidClass,
        clauseKeyword: clauseKeyword ?? this.clauseKeyword,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          ...((({
            required final HashableList<SwidClass> superInterfaces,
          }) =>
              superInterfaces.isNotEmpty
                  ? [
                      " ",
                      clauseKeyword,
                      " ",
                      superInterfaces
                          .map(
                            (x) => pipeline
                                .reduceFromTerm(
                                  TransformPrimitiveNamesToTs(
                                    swidType: SwidType.fromSwidClass(
                                      swidClass: x,
                                    ),
                                  ),
                                )
                                .when(
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
                                      required final HashableList<HashableList<String>>
                                          intersectedMembers,
                                    }) =>
                                        intersectedMembers.isNotEmpty
                                            ? intersectedMembers
                                                .reduce((value, element) => [
                                                      ...value,
                                                      ...element,
                                                    ])
                                            : <String>[])(
                                      intersectedMembers: swidClass
                                          .mixedInClasses
                                          .map(
                                            (k) => conflictingInstanceMembers(
                                              first:
                                                  SwidClass.mergeSuperClasses(
                                                swidClass: x,
                                              ),
                                              second:
                                                  SwidClass.mergeSuperClasses(
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
        ].join(""),
      );
}
