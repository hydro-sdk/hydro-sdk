import 'package:freezed_annotation/freezed_annotation.dart';


part 'swidConfigDartEmitOptions.freezed.dart';
part 'swidConfigDartEmitOptions.g.dart';

@freezed
class SwidConfigDartEmitOptions with _$SwidConfigDartEmitOptions {
  const factory SwidConfigDartEmitOptions({
    required List<String> prefixPaths,
    required String hostPackageName,
  }) = _$SwidConfigDartEmitOptionsCtor;

  factory SwidConfigDartEmitOptions.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigDartEmitOptionsFromJson(json);
}
