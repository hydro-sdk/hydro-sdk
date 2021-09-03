import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiOptionalParameter.freezed.dart';

@freezed
class SwidiOptionalParameter
    with
        _$SwidiOptionalParameter,
        HashKeyMixin<SwidiOptionalParameter>,
        HashComparableMixin<SwidiOptionalParameter>
    implements
        ICopyable<SwidiOptionalParameter,
            $SwidiOptionalParameterCopyWith<SwidiOptionalParameter>> {
  SwidiOptionalParameter._();

  factory SwidiOptionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiOptionalParameterCtor;

  factory SwidiOptionalParameter._clone({
    required final SwidiOptionalParameter swidiOptionalParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiOptionalParameter(
        declaration: declaration ?? swidiOptionalParameter.declaration.clone(),
      );

  @override
      List<int> get hashableParts => [
        ...declaration.hashableParts,
      ];

  @override
  SwidiOptionalParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiOptionalParameter._clone(
        swidiOptionalParameter: this,
        declaration: declaration,
      );
}
