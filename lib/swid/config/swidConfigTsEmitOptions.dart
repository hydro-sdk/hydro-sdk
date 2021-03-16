import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidConfigTsEmitOptions.freezed.dart';
part 'swidConfigTsEmitOptions.g.dart';

@freezed
abstract class SwidConfigTsEmitOptions with _$SwidConfigTsEmitOptions {
  const factory SwidConfigTsEmitOptions({
    @required List<String> prefixPaths,
  }) = _$SwidConfigTsEmitOptionsCtor;

  factory SwidConfigTsEmitOptions.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigTsEmitOptionsFromJson(json);
}
