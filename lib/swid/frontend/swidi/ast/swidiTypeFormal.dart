import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiTypeFormal.freezed.dart';

@freezed
class SwidiTypeFormal
    with
        _$SwidiTypeFormal,
        HashKeyMixin<SwidiTypeFormal>,
        HashComparableMixin<SwidiTypeFormal>
    implements
        ICopyable<SwidiTypeFormal, $SwidiTypeFormalCopyWith<SwidiTypeFormal>> {
  SwidiTypeFormal._();

  factory SwidiTypeFormal({
    required final String name,
    required final SwidiInterface bound,
  }) = _$SwidiTypeFormalCtor;

  static final empty = SwidiTypeFormal(
    name: "",
    bound: SwidiInterface.empty,
  );

  factory SwidiTypeFormal._clone({
    required final SwidiTypeFormal swidiTypeFormal,
    final String? name,
    final SwidiInterface? bound,
  }) =>
      SwidiTypeFormal(
        name: name ?? swidiTypeFormal.name,
        bound: bound ?? swidiTypeFormal.bound.clone(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* bound.hashKey.hashableParts;
  }

  @override
  SwidiTypeFormal clone({
    final String? name,
    final SwidiInterface? bound,
  }) =>
      SwidiTypeFormal._clone(
        swidiTypeFormal: this,
        name: name,
        bound: bound,
      );
}
