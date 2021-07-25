import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiAnnotation.freezed.dart';

@freezed
class SwidiAnnotation with _$SwidiAnnotation {
  const factory SwidiAnnotation({
    required SwidiConst value,
  }) = _$SwidiAnnotationCtor;

  factory SwidiAnnotation.clone({
    required SwidiAnnotation swidiAnnotation,
    SwidiConst? value,
  }) =>
      SwidiAnnotation(
        value: value ??
            SwidiConst.clone(
              swidiConst: swidiAnnotation.value,
            ),
      );
}
