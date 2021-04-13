import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';

part 'swidiDeclaration.freezed.dart';

@freezed
abstract class SwidiDeclaration with _$SwidiDeclaration {
  const factory SwidiDeclaration({
    @required
        String name,
    @required
        SwidiInterface type,
    @Default(
      const SwidiConst.fromSwidiEmptyConst(
        swidiEmptyConst: SwidiEmptyConst(),
      ),
    )
        SwidiConst defaultConstValue,
  }) = _$SwidiDeclarationCtor;

  factory SwidiDeclaration.clone({
    @required SwidiDeclaration swidiDeclaration,
    String name,
    SwidiInterface type,
    SwidiConst defaultConstValue,
  }) =>
      SwidiDeclaration(
        name: name ?? swidiDeclaration.name,
        type: type ??
            SwidiInterface.clone(
              swidiInterface: swidiDeclaration.type,
            ),
        defaultConstValue: defaultConstValue ??
            SwidiConst.clone(
              swidiConst: swidiDeclaration.defaultConstValue,
            ),
      );
}
