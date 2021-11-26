import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/transforms/mergeClassDeclarations.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

part 'swidIr.freezed.dart';
part 'swidIr.g.dart';

@freezed
class SwidIr with _$SwidIr {
  const factory SwidIr.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$SwidIrFromSwidClass;

  const factory SwidIr.fromSwidEnum({
    required final SwidEnum swidEnum,
  }) = _$SwidIrFromSwidEnum;

  const factory SwidIr.fromSwidTopLevelStaticConstFieldDeclaration({
    required final SwidTopLevelStaticConstFieldDeclaration
        swidTopLevelStaticConstFieldDeclaration,
  }) = _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration;

  factory SwidIr.fromJson(Map<String, dynamic> json) => _$SwidIrFromJson(json);

  static List<SwidIr> merge({
    required final List<List<SwidIr>> ir,
  }) =>
      ir.reduce(
        (value, element) => [
          ...([
            ...value
                .map((x) => x.maybeWhen(
                      fromSwidEnum: (val) => val,
                      orElse: () => null,
                    ))
                .whereNotNull()
                .toList(),
            ...element
                .map((x) => x.maybeWhen(
                      fromSwidEnum: (val) => val,
                      orElse: () => null,
                    ))
                .whereNotNull()
                .toList(),
          ]
              .map(
                (x) => SwidIr.fromSwidEnum(
                  swidEnum: x,
                ),
              )
              .toList()),
          ...([
            ...value
                .map((x) => x.maybeWhen(
                      fromSwidTopLevelStaticConstFieldDeclaration: (val) => val,
                      orElse: () => null,
                    ))
                .whereNotNull()
                .toList(),
            ...element
                .map((x) => x.maybeWhen(
                      fromSwidTopLevelStaticConstFieldDeclaration: (val) => val,
                      orElse: () => null,
                    ))
                .whereNotNull()
                .toList()
          ]
              .map(
                (x) => SwidIr.fromSwidTopLevelStaticConstFieldDeclaration(
                  swidTopLevelStaticConstFieldDeclaration: x,
                ),
              )
              .toList()),
          ..._mergeClasses(
            first: value
                .map(
                  (x) => x.maybeWhen(
                    fromSwidClass: (val) => val,
                    orElse: () => null,
                  ),
                )
                .whereNotNull()
                .toList(),
            second: element
                .map((x) => x.maybeWhen(
                      fromSwidClass: (val) => val,
                      orElse: () => null,
                    ))
                .whereNotNull()
                .toList(),
          )
              .map(
                (x) => SwidIr.fromSwidClass(
                  swidClass: x,
                ),
              )
              .toList()
        ],
      );
}

List<SwidClass> _mergeClasses({
  required final List<SwidClass> first,
  required final List<SwidClass> second,
}) =>
    second.fold(
      first,
      (previousValue, element) => <SwidClass?>[
                ...previousValue,
              ].firstWhere(
                  (x) =>
                      x?.originalPackagePath == element.originalPackagePath &&
                      x?.name == element.name,
                  orElse: () => null) !=
              null
          ? (List.from(previousValue)
            ..setAll(
              previousValue.indexWhere(
                (x) =>
                    x.originalPackagePath == element.originalPackagePath &&
                    x.name == element.name,
              ),
              [
                SwidClass.clone(
                  swidClass: CachingPipeline(
                    //This is a hack.
                    //IR merging should probably be a transform as well
                    cacheMgr: const PipelineNoopCacheMgr(),
                  ).reduceFromTerm(
                    MergeClassDeclarations(
                      swidClass: previousValue.firstWhere(
                        (x) =>
                            x.originalPackagePath ==
                                element.originalPackagePath &&
                            x.name == element.name,
                      ),
                      superClass: element,
                    ),
                  ),
                  typeFormals: element.typeFormals,
                ),
              ],
            ))
          : [
              ...previousValue,
              element,
            ],
    );
