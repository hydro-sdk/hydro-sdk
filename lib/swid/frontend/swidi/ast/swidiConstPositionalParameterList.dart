import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstPositionalParameterList.freezed.dart';

@freezed
class SwidiConstPositionalParameterList
    with
        _$SwidiConstPositionalParameterList,
        HashKeyMixin<SwidiConstPositionalParameterList>,
        HashComparableMixin<SwidiConstPositionalParameterList>
    implements
        ICopyable<
            SwidiConstPositionalParameterList,
            $SwidiConstPositionalParameterListCopyWith<
                SwidiConstPositionalParameterList>> {
  SwidiConstPositionalParameterList._();

  factory SwidiConstPositionalParameterList({
    required final List<SwidiConst> parameters,
  }) = _$SwidiConstPositionalParameterListCtor;

  factory SwidiConstPositionalParameterList.clone({
    required final SwidiConstPositionalParameterList
        swidiConstPositionalParameterList,
    final List<SwidiConst>? parameters,
  }) =>
      SwidiConstPositionalParameterList(
        parameters: parameters ??
            List.from(
              swidiConstPositionalParameterList.parameters
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
  SwidiConstPositionalParameterList clone({
    final List<SwidiConst>? parameters,
  }) =>
      SwidiConstPositionalParameterList.clone(
        swidiConstPositionalParameterList: this,
        parameters: parameters,
      );
}
