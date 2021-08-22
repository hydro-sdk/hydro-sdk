import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiDeclaration.freezed.dart';

@freezed
class SwidiDeclaration
    with
        _$SwidiDeclaration,
        HashKeyMixin<SwidiDeclaration>,
        HashComparableMixin<SwidiDeclaration>
    implements
        ICopyable<SwidiDeclaration,
            $SwidiDeclarationCopyWith<SwidiDeclaration>> {
  SwidiDeclaration._();

  factory SwidiDeclaration({
    required final String name,
    required final SwidiInterface type,
    required final SwidiConst defaultConstValue,
  }) = _$SwidiDeclarationCtor;

  factory SwidiDeclaration._clone({
    required final SwidiDeclaration swidiDeclaration,
    final String? name,
    final SwidiInterface? type,
    final SwidiConst? defaultConstValue,
  }) =>
      SwidiDeclaration(
        name: name ?? swidiDeclaration.name,
        type: type ?? swidiDeclaration.type.clone(),
        defaultConstValue:
            defaultConstValue ?? swidiDeclaration.defaultConstValue.clone(),
      );

  @override
  SwidiDeclaration clone({
    final String? name,
    final SwidiInterface? type,
    final SwidiConst? defaultConstValue,
  }) =>
      SwidiDeclaration._clone(
        swidiDeclaration: this,
        name: name,
        type: type,
        defaultConstValue: defaultConstValue,
      );
}
