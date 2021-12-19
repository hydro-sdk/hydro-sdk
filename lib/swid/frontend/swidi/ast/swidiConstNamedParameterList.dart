import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstNamedParameterList.freezed.dart';

@freezed
class SwidiConstNamedParameterList
    with
        _$SwidiConstNamedParameterList,
        HashKeyMixin<SwidiConstNamedParameterList>,
        HashComparableMixin<SwidiConstNamedParameterList>
    implements
        ICopyable<
            SwidiConstNamedParameterList,
            $SwidiConstNamedParameterListCopyWith<
                SwidiConstNamedParameterList>> {
  SwidiConstNamedParameterList._();

  factory SwidiConstNamedParameterList({
    required final List<SwidiConstNamedParameter> parameters,
  }) = _$SwidiConstNamedParameterListCtor;

  factory SwidiConstNamedParameterList._clone({
    required final SwidiConstNamedParameterList swidiConstNamedParameterList,
    final List<SwidiConstNamedParameter>? parameters,
  }) =>
      SwidiConstNamedParameterList(
        parameters: parameters ??
            List.from(
              swidiConstNamedParameterList.parameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parameters.hashableParts;
  }

  @override
  SwidiConstNamedParameterList clone({
    final List<SwidiConstNamedParameter>? parameters,
  }) =>
      SwidiConstNamedParameterList._clone(
        swidiConstNamedParameterList: this,
        parameters: parameters,
      );
}
