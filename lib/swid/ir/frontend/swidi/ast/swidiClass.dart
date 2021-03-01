import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiLibraryScopePrefix.dart';

part 'swidiClass.freezed.dart';

@freezed
abstract class SwidiClass with _$SwidiClass {
  const factory SwidiClass({
    @required String name,
    @required SwidiLibraryScopePrefix libraryScopePrefix,
    @required List<SwidiFunctionDeclaration> methods,
  }) = _$SwidiClassCtor;
}
