import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidStaticConstFieldReference.freezed.dart';
part 'swidStaticConstFieldReference.g.dart';

@freezed
class SwidStaticConstFieldReference
    with _$SwidStaticConstFieldReference {
  const factory SwidStaticConstFieldReference({required String name}) = _$Data;

  factory SwidStaticConstFieldReference.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldReferenceFromJson(json);
}
