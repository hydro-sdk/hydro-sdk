import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';

part 'swidStaticConstPrefixedIdentifier.freezed.dart';
part 'swidStaticConstPrefixedIdentifier.g.dart';

@freezed
abstract class SwidStaticConstPrefixedIdentifier
    with _$SwidStaticConstPrefixedIdentifier {
  const factory SwidStaticConstPrefixedIdentifier({
    @required SwidInterface prefix,
    @required SwidStaticConstFieldReference staticConstFieldReference,
  }) = _$Data;

  factory SwidStaticConstPrefixedIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedIdentifierFromJson(json);
}
