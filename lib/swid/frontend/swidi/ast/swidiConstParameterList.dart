import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstParameterList.freezed.dart';

@freezed
class SwidiConstParameterList
    with
        _$SwidiConstParameterList,
        HashKeyMixin<SwidiConstParameterList>,
        HashComparableMixin<SwidiConstParameterList>
    implements
        ICopyable<SwidiConstParameterList,
            $SwidiConstParameterListCopyWith<SwidiConstParameterList>> {
  SwidiConstParameterList._();

  factory SwidiConstParameterList({
    required final List<SwidiConst> positionalParameters,
    required final List<SwidiConstNamedParameter> namedParameters,
  }) = _$SwidiConstParameterListCtor;

  factory SwidiConstParameterList._clone({
    required final SwidiConstParameterList swidiConstParameterList,
    final List<SwidiConst>? positionalParameters,
    final List<SwidiConstNamedParameter>? namedParameters,
  }) =>
      SwidiConstParameterList(
        positionalParameters: positionalParameters ??
            List.from(
              swidiConstParameterList.positionalParameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        namedParameters: namedParameters ??
            List.from(
              swidiConstParameterList.namedParameters
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* positionalParameters.hashableParts;
    yield* namedParameters.hashableParts;
  }

  @override
  SwidiConstParameterList clone({
    final List<SwidiConst>? positionalParameters,
    final List<SwidiConstNamedParameter>? namedParameters,
  }) =>
      SwidiConstParameterList._clone(
        swidiConstParameterList: this,
        positionalParameters: positionalParameters,
        namedParameters: namedParameters,
      );
}
