import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidConfigTsEmitOptions.freezed.dart';
part 'swidConfigTsEmitOptions.g.dart';

@freezed
class SwidConfigTsEmitOptions with _$SwidConfigTsEmitOptions {
  const factory SwidConfigTsEmitOptions({
    required final List<String> prefixPaths,
  }) = _$SwidConfigTsEmitOptionsCtor;

  factory SwidConfigTsEmitOptions.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigTsEmitOptionsFromJson(json);
}
