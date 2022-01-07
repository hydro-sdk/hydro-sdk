import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstMapLiteral.freezed.dart';
part 'swidStaticConstMapLiteral.g.dart';

@freezed
class SwidStaticConstMapLiteral
    with
        _$SwidStaticConstMapLiteral,
        HashKeyMixin<SwidStaticConstMapLiteral>,
        HashComparableMixin<SwidStaticConstMapLiteral>
    implements
        ICopyable<SwidStaticConstMapLiteral,
            $SwidStaticConstMapLiteralCopyWith<SwidStaticConstMapLiteral>> {
  SwidStaticConstMapLiteral._();

  factory SwidStaticConstMapLiteral({
    required final List<SwidStaticConstMapLiteralEntry> elements,
    required final SwidType staticType,
  }) = _$SwidStaticConstMapLiteralCtor;

  factory SwidStaticConstMapLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstMapLiteralFromJson(json);

  factory SwidStaticConstMapLiteral.clone({
    required final SwidStaticConstMapLiteral swidStaticConstMapLiteral,
    final List<SwidStaticConstMapLiteralEntry>? elements,
    final SwidType? staticType,
  }) =>
      SwidStaticConstMapLiteral(
        elements: elements ?? swidStaticConstMapLiteral.elements,
        staticType: staticType ?? swidStaticConstMapLiteral.staticType,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* elements.hashableParts;
    yield* staticType.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstMapLiteral clone({
    final List<SwidStaticConstMapLiteralEntry>? elements,
    final SwidType? staticType,
  }) =>
      SwidStaticConstMapLiteral.clone(
        swidStaticConstMapLiteral: this,
        elements: elements,
        staticType: staticType,
      );
}
