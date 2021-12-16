import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiAnnotationList.freezed.dart';

@freezed
class SwidiAnnotationList
    with
        _$SwidiAnnotationList,
        HashKeyMixin<SwidiAnnotationList>,
        HashComparableMixin<SwidiAnnotationList>
    implements
        ICopyable<SwidiAnnotationList,
            $SwidiAnnotationListCopyWith<SwidiAnnotationList>> {
  SwidiAnnotationList._();

  factory SwidiAnnotationList({
    required final List<SwidiAnnotation> annotationList,
  }) = _$SwidiAnnotationListCtor;

  factory SwidiAnnotationList._clone({
    required final SwidiAnnotationList swidiAnnotationList,
    List<SwidiAnnotation>? annotationList,
  }) =>
      SwidiAnnotationList(
        annotationList: annotationList ??
            swidiAnnotationList.annotationList
                .map(
                  (x) => x.clone(),
                )
                .toList(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* annotationList.hashableParts;
  }

  @override
  SwidiAnnotationList clone({
    final List<SwidiAnnotation>? annotationList,
  }) =>
      SwidiAnnotationList._clone(
        swidiAnnotationList: this,
        annotationList: annotationList,
      );
}
