import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';

part 'swidiTypeArgumentList.freezed.dart';

@freezed
class SwidiTypeArgumentList with _$SwidiTypeArgumentList {
  const SwidiTypeArgumentList._();

  const factory SwidiTypeArgumentList({
    required final List<SwidiInterface> typeList,
  }) = _$SwidiTypeArgumentListCtor;

  factory SwidiTypeArgumentList.clone({
    required final SwidiTypeArgumentList swidiTypeArgumentList,
    List<SwidiInterface>? typeList,
  }) =>
      SwidiTypeArgumentList(
        typeList: typeList ??
            swidiTypeArgumentList.typeList
                .map(
                  (x) => x.clone(),
                )
                .toList(),
      );
}
