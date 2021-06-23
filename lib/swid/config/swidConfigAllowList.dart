import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidConfigAllowList.freezed.dart';
part 'swidConfigAllowList.g.dart';

@freezed
class SwidConfigAllowList with _$SwidConfigAllowList {
  const factory SwidConfigAllowList({
    required List<String> classNames,
    required List<String> packagePaths,
  }) = _$SwidConfigAllowListCtor;

  factory SwidConfigAllowList.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigAllowListFromJson(json);
}
