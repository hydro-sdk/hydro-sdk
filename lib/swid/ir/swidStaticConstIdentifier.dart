import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidStaticConstIdentifier.freezed.dart';
part 'swidStaticConstIdentifier.g.dart';

@freezed
class SwidStaticConstIdentifier with _$SwidStaticConstIdentifier {
  const factory SwidStaticConstIdentifier({
    required final String identifier,
    required final SwidType enclosingType,
  }) = _$SwidStaticConstIdentifierCtor;

  factory SwidStaticConstIdentifier.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstIdentifierFromJson(json);

  factory SwidStaticConstIdentifier.clone({
    required final SwidStaticConstIdentifier swidStaticConstIdentifier,
    String? identifier,
    SwidType? enclosingType,
  }) =>
      SwidStaticConstIdentifier(
        identifier: identifier ?? swidStaticConstIdentifier.identifier,
        enclosingType: enclosingType ??
            SwidType.clone(
              swidType: swidStaticConstIdentifier.enclosingType,
            ),
      );
}
