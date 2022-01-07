import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstListLiteral.freezed.dart';
part 'swidStaticConstListLiteral.g.dart';

@freezed
class SwidStaticConstListLiteral
    with
        _$SwidStaticConstListLiteral,
        HashKeyMixin<SwidStaticConstListLiteral>,
        HashComparableMixin<SwidStaticConstListLiteral>
    implements
        ICopyable<SwidStaticConstListLiteral,
            $SwidStaticConstListLiteralCopyWith<SwidStaticConstListLiteral>> {
  SwidStaticConstListLiteral._();

  factory SwidStaticConstListLiteral({
    required final List<SwidStaticConst> elements,
    required final SwidType staticType,
  }) = _$SwidStaticConstListLiteralCtor;

  factory SwidStaticConstListLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstListLiteralFromJson(json);

  factory SwidStaticConstListLiteral.clone({
    required final SwidStaticConstListLiteral swidStaticConstListLiteral,
    final List<SwidStaticConst>? elements,
    final SwidType? staticType,
  }) =>
      SwidStaticConstListLiteral(
        elements: elements ?? swidStaticConstListLiteral.elements,
        staticType: staticType ?? swidStaticConstListLiteral.staticType,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* elements.hashableParts;
    yield* staticType.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstListLiteral clone({
    final List<SwidStaticConst>? elements,
    final SwidType? staticType,
  }) =>
      SwidStaticConstListLiteral.clone(
        swidStaticConstListLiteral: this,
        elements: elements,
        staticType: staticType,
      );
}
