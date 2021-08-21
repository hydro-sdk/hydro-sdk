import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidEnum.freezed.dart';
part 'swidEnum.g.dart';

@freezed
class SwidEnum with _$SwidEnum {
  const factory SwidEnum({
    required final String originalPackagePath,
    required final String identifier,
    required final List<String> children,
  }) = _$Data;

  factory SwidEnum.fromJson(Map<String, dynamic> json) =>
      _$SwidEnumFromJson(json);
}
