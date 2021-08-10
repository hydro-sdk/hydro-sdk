import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidStaticConstFieldReference.freezed.dart';
part 'swidStaticConstFieldReference.g.dart';

@freezed
class SwidStaticConstFieldReference with _$SwidStaticConstFieldReference {
  const factory SwidStaticConstFieldReference({
    required final String name,
  }) = _$Data;

  factory SwidStaticConstFieldReference.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldReferenceFromJson(json);

  factory SwidStaticConstFieldReference.clone({
    required final SwidStaticConstFieldReference swidStaticConstFieldReference,
    String? name,
  }) =>
      SwidStaticConstFieldReference(
        name: name ?? swidStaticConstFieldReference.name,
      );
}
