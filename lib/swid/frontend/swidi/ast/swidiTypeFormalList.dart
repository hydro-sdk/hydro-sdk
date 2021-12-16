import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiTypeFormalList.freezed.dart';

@freezed
class SwidiTypeFormalList
    with
        _$SwidiTypeFormalList,
        HashKeyMixin<SwidiTypeFormalList>,
        HashComparableMixin<SwidiTypeFormalList>
    implements
        ICopyable<SwidiTypeFormalList,
            $SwidiTypeFormalListCopyWith<SwidiTypeFormalList>> {
  SwidiTypeFormalList._();

  factory SwidiTypeFormalList({
    required final List<SwidiTypeFormal> typeFormalList,
  }) = _$SwidiTypeFormalListCtorl;

  factory SwidiTypeFormalList._clone({
    required final SwidiTypeFormalList swidiTypeFormalList,
    final List<SwidiTypeFormal>? typeFormalList,
  }) =>
      SwidiTypeFormalList(
        typeFormalList: typeFormalList ??
            swidiTypeFormalList.typeFormalList
                .map(
                  (x) => x.clone(),
                )
                .toList(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* typeFormalList.hashableParts;
  }

  @override
  SwidiTypeFormalList clone({
    final List<SwidiTypeFormal>? typeFormalList,
  }) =>
      SwidiTypeFormalList._clone(
        swidiTypeFormalList: this,
        typeFormalList: typeFormalList,
      );
}
