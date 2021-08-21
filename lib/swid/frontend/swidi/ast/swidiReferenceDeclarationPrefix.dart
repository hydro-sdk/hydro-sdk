import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidiReferenceDeclarationPrefix.freezed.dart';

@freezed
class SwidiReferenceDeclarationPrefix with _$SwidiReferenceDeclarationPrefix {
  const factory SwidiReferenceDeclarationPrefix({
    required final String name,
  }) = _$SwidiReferenceDeclarationPrefixCtor;

  static const empty = const SwidiReferenceDeclarationPrefix(name: "");

  factory SwidiReferenceDeclarationPrefix.clone({
    required final SwidiReferenceDeclarationPrefix
        swidiReferenceDeclarationPrefix,
    String? name,
  }) =>
      SwidiReferenceDeclarationPrefix(
        name: name ?? swidiReferenceDeclarationPrefix.name,
      );
}
