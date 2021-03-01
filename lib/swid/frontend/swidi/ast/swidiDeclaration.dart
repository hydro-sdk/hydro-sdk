import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';

part 'swidiDeclaration.freezed.dart';

@freezed
abstract class SwidiDeclaration with _$SwidiDeclaration {
  const factory SwidiDeclaration({
    @required String name,
    @required SwidiInterface type,
  }) = _$SwidiDeclarationCtor;
}
