import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiReferenceDeclarationPrefix.freezed.dart';

@freezed
class SwidiReferenceDeclarationPrefix
    with
        _$SwidiReferenceDeclarationPrefix,
        HashKeyMixin<SwidiReferenceDeclarationPrefix>,
        HashComparableMixin<SwidiReferenceDeclarationPrefix>
    implements
        ICopyable<
            SwidiReferenceDeclarationPrefix,
            $SwidiReferenceDeclarationPrefixCopyWith<
                SwidiReferenceDeclarationPrefix>> {
  SwidiReferenceDeclarationPrefix._();

  factory SwidiReferenceDeclarationPrefix({
    required final String name,
  }) = _$SwidiReferenceDeclarationPrefixCtor;

  static final empty = SwidiReferenceDeclarationPrefix(name: "");

  factory SwidiReferenceDeclarationPrefix._clone({
    required final SwidiReferenceDeclarationPrefix
        swidiReferenceDeclarationPrefix,
    String? name,
  }) =>
      SwidiReferenceDeclarationPrefix(
        name: name ?? swidiReferenceDeclarationPrefix.name,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
  }

  @override
  SwidiReferenceDeclarationPrefix clone({
    final String? name,
  }) =>
      SwidiReferenceDeclarationPrefix._clone(
        swidiReferenceDeclarationPrefix: this,
        name: name,
      );
}
