import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstPrefixedIdentifier.freezed.dart';
part 'swidStaticConstPrefixedIdentifier.g.dart';

@freezed
class SwidStaticConstPrefixedIdentifier
    with
        _$SwidStaticConstPrefixedIdentifier,
        HashKeyMixin<SwidStaticConstPrefixedIdentifier>,
        HashComparableMixin<SwidStaticConstPrefixedIdentifier>
    implements
        ICopyable<
            SwidStaticConstPrefixedIdentifier,
            $SwidStaticConstPrefixedIdentifierCopyWith<
                SwidStaticConstPrefixedIdentifier>> {
  SwidStaticConstPrefixedIdentifier._();

  factory SwidStaticConstPrefixedIdentifier({
    required final SwidInterface prefix,
    required final SwidStaticConstFieldReference staticConstFieldReference,
  }) = _$Data;

  factory SwidStaticConstPrefixedIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedIdentifierFromJson(json);

  factory SwidStaticConstPrefixedIdentifier.clone({
    required final SwidStaticConstPrefixedIdentifier
        swidStaticConstPrefixedIdentifier,
    final SwidInterface? prefix,
    final SwidStaticConstFieldReference? staticConstFieldReference,
  }) =>
      SwidStaticConstPrefixedIdentifier(
        prefix: prefix ?? swidStaticConstPrefixedIdentifier.prefix,
        staticConstFieldReference: staticConstFieldReference ??
            swidStaticConstPrefixedIdentifier.staticConstFieldReference,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* prefix.hashKey.hashableParts;
    yield* staticConstFieldReference.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstPrefixedIdentifier clone({
    final SwidInterface? prefix,
    final SwidStaticConstFieldReference? staticConstFieldReference,
  }) =>
      SwidStaticConstPrefixedIdentifier.clone(
        swidStaticConstPrefixedIdentifier: this,
        prefix: prefix,
        staticConstFieldReference: staticConstFieldReference,
      );
}
