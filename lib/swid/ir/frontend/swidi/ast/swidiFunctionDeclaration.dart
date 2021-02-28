import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
abstract class SwidiFunctionDeclaration with _$SwidiFunctionDeclaration {
  const factory SwidiFunctionDeclaration({
    @required String name,
    @required String returnType,
    @required List<SwidiPositionalParameter> positionalParameters,
    @required List<SwidiOptionalParameter> optionalParameters,
    @required List<SwidiNamedParameter> namedParameters,
  }) = _$SwidiFunctionDeclarationCtor;
}
