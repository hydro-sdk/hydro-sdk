import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';

part 'swidiTypeFormalList.freezed.dart';

@freezed
class SwidiTypeFormalList with _$SwidiTypeFormalList {
  const SwidiTypeFormalList._();

  const factory SwidiTypeFormalList({
    required final List<SwidiTypeFormal> typeFormalList,
  }) = _$SwidiTypeFormalListCtorl;

  factory SwidiTypeFormalList.clone({
    required final SwidiTypeFormalList swidiTypeFormalList,
    List<SwidiTypeFormal>? typeFormalList,
  }) =>
      SwidiTypeFormalList(
        typeFormalList: typeFormalList ??
            swidiTypeFormalList.typeFormalList
                .map((x) => SwidiTypeFormal.clone(
                      swidiTypeFormal: x,
                    ))
                .toList(),
      );
}
