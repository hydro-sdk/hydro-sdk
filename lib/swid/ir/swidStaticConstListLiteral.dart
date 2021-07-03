import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstListLiteral.freezed.dart';
part 'swidStaticConstListLiteral.g.dart';

@freezed
class SwidStaticConstListLiteral with _$SwidStaticConstListLiteral {
  const factory SwidStaticConstListLiteral({
    required List<SwidStaticConst> elements,
  }) = _$SwidStaticConstListLiteralCtor;

  factory SwidStaticConstListLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstListLiteralFromJson(json);

  factory SwidStaticConstListLiteral.clone({
    required SwidStaticConstListLiteral swidStaticConstListLiteral,
    List<SwidStaticConst>? elements,
  }) =>
      SwidStaticConstListLiteral(
        elements: elements ??
            List.from(
              swidStaticConstListLiteral.elements
                  .map((x) => SwidStaticConst.clone(
                        swidStaticConst: x,
                      ))
                  .toList(),
            ),
      );
}
