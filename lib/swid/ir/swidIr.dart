import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';

part 'swidIr.freezed.dart';
part 'swidIr.g.dart';

@freezed
class SwidIr with _$SwidIr {
  const factory SwidIr.fromSwidClass({required SwidClass swidClass}) =
      _$SwidIrFromSwidClass;

  const factory SwidIr.fromSwidEnum({required SwidEnum swidEnum}) =
      _$SwidIrFromSwidEnum;

  factory SwidIr.fromJson(Map<String, dynamic> json) => _$SwidIrFromJson(json);

  static List<SwidIr> merge({required List<List<SwidIr>> ir}) =>
      ir.reduce((value, element) => [
            ...([
              ...value
                  .map((x) => x.maybeWhen(
                      fromSwidEnum: (val) => val, orElse: () => null))
                  .where((x) => x != null)
                  .toList(),
              ...element
                  .map((x) => x.maybeWhen(
                      fromSwidEnum: (val) => val, orElse: () => null))
                  .where((x) => x != null)
                  .toList(),
            ].map((x) => SwidIr.fromSwidEnum(swidEnum: x!)).toList()),
            ..._mergeClasses(
              first: value
                  .map((x) => x.maybeWhen(
                      fromSwidClass: (val) => val, orElse: () => null))
                  .where((x) => x != null)
                  .toList(),
              second: element
                  .map((x) => x.maybeWhen(
                      fromSwidClass: (val) => val, orElse: () => null))
                  .where((x) => x != null)
                  .toList(),
            ).map((x) => SwidIr.fromSwidClass(swidClass: x!)).toList()
          ]);
}

List<SwidClass?> _mergeClasses(
        {required List<SwidClass?> first, required List<SwidClass?> second}) =>
    second.fold(
        first,
        (previousValue, element) => previousValue.firstWhere(
                    (x) =>
                        x!.originalPackagePath == element!.originalPackagePath &&
                        x.name == element.name,
                    orElse: () => null) !=
                null
            ? [
                ...previousValue
                    .where((x) =>
                        x!.originalPackagePath != element!.originalPackagePath &&
                        x.name != element.name)
                    .toList(),
                SwidClass.mergeDeclarations(
                    swidClass: previousValue.firstWhere(
                        (x) =>
                            x!.originalPackagePath ==
                                element!.originalPackagePath &&
                            x.name == element.name,
                        orElse: () => null),
                    superClass: element)
              ]
            : [
                ...previousValue,
                element,
              ]);
