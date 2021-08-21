import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiNamedParameter.freezed.dart';

@freezed
class SwidiNamedParameter
    with
        _$SwidiNamedParameter,
        HashKeyMixin<SwidiNamedParameter>,
        HashComparableMixin<SwidiNamedParameter>
    implements
        ICopyable<SwidiNamedParameter,
            $SwidiNamedParameterCopyWith<SwidiNamedParameter>> {
  SwidiNamedParameter._();

  factory SwidiNamedParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiNamedParameterCtor;

  factory SwidiNamedParameter._clone({
    required final SwidiNamedParameter swidiNamedParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiNamedParameter(
        declaration: declaration ?? swidiNamedParameter.declaration.clone(),
      );

  @override
  SwidiNamedParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiNamedParameter._clone(
        swidiNamedParameter: this,
        declaration: declaration,
      );
}
