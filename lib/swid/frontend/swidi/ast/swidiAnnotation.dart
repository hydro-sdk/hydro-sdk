import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiAnnotation.freezed.dart';

@freezed
class SwidiAnnotation
    with
        _$SwidiAnnotation,
        HashKeyMixin<SwidiAnnotation>,
        HashComparableMixin<SwidiAnnotation>
    implements
        ICopyable<SwidiAnnotation, $SwidiAnnotationCopyWith<SwidiAnnotation>> {
  SwidiAnnotation._();

  factory SwidiAnnotation({
    required final SwidiConst value,
  }) = _$SwidiAnnotationCtor;

  factory SwidiAnnotation._clone({
    required final SwidiAnnotation swidiAnnotation,
    SwidiConst? value,
  }) =>
      SwidiAnnotation(
        value: value ?? swidiAnnotation.value.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* value.hashKey.hashableParts;
  }

  @override
  SwidiAnnotation clone({
    final SwidiConst? value,
  }) =>
      SwidiAnnotation._clone(
        swidiAnnotation: this,
        value: value,
      );
}
