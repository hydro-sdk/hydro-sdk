import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiPositionalParameter.freezed.dart';

@freezed
class SwidiPositionalParameter
    with
        _$SwidiPositionalParameter,
        HashKeyMixin<SwidiPositionalParameter>,
        HashComparableMixin<SwidiPositionalParameter>
    implements
        ICopyable<SwidiPositionalParameter,
            $SwidiPositionalParameterCopyWith<SwidiPositionalParameter>> {
  SwidiPositionalParameter._();

  factory SwidiPositionalParameter({
    required final SwidiDeclaration declaration,
  }) = _$SwidiPositionalParameterCtor;

  factory SwidiPositionalParameter._clone({
    required final SwidiPositionalParameter swidiPositionalParameter,
    final SwidiDeclaration? declaration,
  }) =>
      SwidiPositionalParameter(
        declaration:
            declaration ?? swidiPositionalParameter.declaration.clone(),
      );

  @override
  List<int> get hashableParts => [
        ...declaration.hashableParts,
      ];

  @override
  SwidiPositionalParameter clone({
    final SwidiDeclaration? declaration,
  }) =>
      SwidiPositionalParameter._clone(
        swidiPositionalParameter: this,
        declaration: declaration,
      );
}
