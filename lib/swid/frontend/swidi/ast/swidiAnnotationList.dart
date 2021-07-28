import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';

part 'swidiAnnotationList.freezed.dart';

@freezed
class SwidiAnnotationList with _$SwidiAnnotationList {
  const factory SwidiAnnotationList({
    required List<SwidiAnnotation> annotationList,
  }) = _$SwidiAnnotationListCtor;

  factory SwidiAnnotationList.clone({
    required SwidiAnnotationList swidiAnnotationList,
    List<SwidiAnnotation>? annotationList,
  }) =>
      SwidiAnnotationList(
        annotationList: annotationList ??
            swidiAnnotationList.annotationList
                .map(
                  (x) => SwidiAnnotation.clone(
                    swidiAnnotation: x,
                  ),
                )
                .toList(),
      );
}
