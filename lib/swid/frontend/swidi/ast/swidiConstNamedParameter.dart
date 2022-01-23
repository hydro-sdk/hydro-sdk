import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstNamedParameter.freezed.dart';

@freezed
class SwidiConstNamedParameter
    with
        _$SwidiConstNamedParameter,
        HashKeyMixin<SwidiConstNamedParameter>,
        HashComparableMixin<SwidiConstNamedParameter>
    implements
        ICopyable<SwidiConstNamedParameter,
            $SwidiConstNamedParameterCopyWith<SwidiConstNamedParameter>> {
  SwidiConstNamedParameter._();

  factory SwidiConstNamedParameter({
    required final String name,
    required final SwidiConst value,
  }) = _$SwidiConstNamedParameterCtor;

  factory SwidiConstNamedParameter._clone({
    required final SwidiConstNamedParameter swidiConstNamedParameter,
    final String? name,
    final SwidiConst? value,
  }) =>
      SwidiConstNamedParameter(
        name: name ?? swidiConstNamedParameter.name,
        value: value ?? swidiConstNamedParameter.value.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* value.hashKey.hashableParts;
  }

  @override
  SwidiConstNamedParameter clone({
    final String? name,
    final SwidiConst? value,
  }) =>
      SwidiConstNamedParameter._clone(
        swidiConstNamedParameter: this,
        name: name,
        value: value,
      );
}
