import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiDeclaration.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
abstract class SwidiFunctionDeclaration with _$SwidiFunctionDeclaration {
  const factory SwidiFunctionDeclaration({
    @required String name,
    @required String returnType,
    @required List<SwidiDeclaration> positionalParameters,
  }) = _$SwidiFunctionDeclarationCtor;
}
