import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';

part 'swidStaticConstPrefixedIdentifier.freezed.dart';
part 'swidStaticConstPrefixedIdentifier.g.dart';

@freezed
class SwidStaticConstPrefixedIdentifier
    with _$SwidStaticConstPrefixedIdentifier {
  const factory SwidStaticConstPrefixedIdentifier({
    required final SwidInterface prefix,
    required final SwidStaticConstFieldReference staticConstFieldReference,
  }) = _$Data;

  factory SwidStaticConstPrefixedIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedIdentifierFromJson(json);

  factory SwidStaticConstPrefixedIdentifier.clone({
    required final SwidStaticConstPrefixedIdentifier
        swidStaticConstPrefixedIdentifier,
    SwidInterface? prefix,
    SwidStaticConstFieldReference? staticConstFieldReference,
  }) =>
      SwidStaticConstPrefixedIdentifier(
        prefix: prefix ??
            SwidInterface.clone(
              swidType: swidStaticConstPrefixedIdentifier.prefix,
            ),
        staticConstFieldReference: staticConstFieldReference ??
            SwidStaticConstFieldReference.clone(
              swidStaticConstFieldReference:
                  swidStaticConstPrefixedIdentifier.staticConstFieldReference,
            ),
      );
}
