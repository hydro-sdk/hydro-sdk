import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstFieldReference.freezed.dart';
part 'swidStaticConstFieldReference.g.dart';

@freezed
class SwidStaticConstFieldReference
    with
        _$SwidStaticConstFieldReference,
        HashKeyMixin<SwidStaticConstFieldReference>,
        HashComparableMixin<SwidStaticConstFieldReference>
    implements
        ICopyable<
            SwidStaticConstFieldReference,
            $SwidStaticConstFieldReferenceCopyWith<
                SwidStaticConstFieldReference>> {
  SwidStaticConstFieldReference._();

  factory SwidStaticConstFieldReference({
    required final String name,
  }) = _$Data;

  factory SwidStaticConstFieldReference.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldReferenceFromJson(json);

  factory SwidStaticConstFieldReference.clone({
    required final SwidStaticConstFieldReference swidStaticConstFieldReference,
    final String? name,
  }) =>
      SwidStaticConstFieldReference(
        name: name ?? swidStaticConstFieldReference.name,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
  })();

  @override
  SwidStaticConstFieldReference clone({
    final String? name,
  }) =>
      SwidStaticConstFieldReference.clone(
        swidStaticConstFieldReference: this,
        name: name,
      );
}
