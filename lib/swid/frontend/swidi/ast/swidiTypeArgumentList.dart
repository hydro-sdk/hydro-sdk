import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiTypeArgumentList.freezed.dart';

@freezed
class SwidiTypeArgumentList
    with
        _$SwidiTypeArgumentList,
        HashKeyMixin<SwidiTypeArgumentList>,
        HashComparableMixin<SwidiTypeArgumentList>
    implements
        ICopyable<SwidiTypeArgumentList,
            $SwidiTypeArgumentListCopyWith<SwidiTypeArgumentList>> {
  SwidiTypeArgumentList._();

  factory SwidiTypeArgumentList({
    required final List<SwidiInterface> typeList,
  }) = _$SwidiTypeArgumentListCtor;

  factory SwidiTypeArgumentList.clone({
    required final SwidiTypeArgumentList swidiTypeArgumentList,
    final List<SwidiInterface>? typeList,
  }) =>
      SwidiTypeArgumentList(
        typeList: typeList ??
            swidiTypeArgumentList.typeList
                .map(
                  (x) => x.clone(),
                )
                .toList(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* typeList.hashableParts;
  }

  @override
  SwidiTypeArgumentList clone({
    final List<SwidiInterface>? typeList,
  }) =>
      SwidiTypeArgumentList.clone(
        swidiTypeArgumentList: this,
        typeList: typeList,
      );
}
