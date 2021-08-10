import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidStaticConstMapLiteral.freezed.dart';
part 'swidStaticConstMapLiteral.g.dart';

@freezed
class SwidStaticConstMapLiteral
    with _$SwidStaticConstMapLiteral
    implements ICloneable<SwidStaticConstMapLiteral> {
  const SwidStaticConstMapLiteral._();

  const factory SwidStaticConstMapLiteral({
    required final  List<SwidStaticConstMapLiteralEntry> elements,
    required final  SwidType staticType,
  }) = _$SwidStaticConstMapLiteralCtor;

  factory SwidStaticConstMapLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstMapLiteralFromJson(json);

  factory SwidStaticConstMapLiteral.clone({
    required final  SwidStaticConstMapLiteral swidStaticConstMapLiteral,
    final List<SwidStaticConstMapLiteralEntry>? elements,
    final SwidType? staticType,
  }) =>
      SwidStaticConstMapLiteral(
        elements: elements ??
            swidStaticConstMapLiteral.elements.map((x) => x.clone()).toList(),
        staticType: staticType ??
            SwidType.clone(
              swidType: swidStaticConstMapLiteral.staticType,
            ),
      );

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
