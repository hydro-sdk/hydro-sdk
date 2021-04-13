import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiReferenceDeclarationPrefix.freezed.dart';

@freezed
abstract class SwidiReferenceDeclarationPrefix
    with _$SwidiReferenceDeclarationPrefix {
  const factory SwidiReferenceDeclarationPrefix({
    @required String name,
  }) = _$SwidiReferenceDeclarationPrefixCtor;

  static const empty = const SwidiReferenceDeclarationPrefix(name: "");

  factory SwidiReferenceDeclarationPrefix.clone({
    @required SwidiReferenceDeclarationPrefix swidiReferenceDeclarationPrefix,
    String name,
  }) =>
      SwidiReferenceDeclarationPrefix(
        name: name ?? swidiReferenceDeclarationPrefix.name,
      );
}
