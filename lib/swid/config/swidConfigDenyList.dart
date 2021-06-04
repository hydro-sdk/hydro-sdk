import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidConfigDenyList.freezed.dart';
part 'swidConfigDenyList.g.dart';

@freezed
class SwidConfigDenyList with _$SwidConfigDenyList {
  const factory SwidConfigDenyList({
    required List<String> classNames,
    required List<String> packagePaths,
  }) = _$SwidConfigDenyListCtor;

  factory SwidConfigDenyList.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigDenyListFromJson(json);
}
