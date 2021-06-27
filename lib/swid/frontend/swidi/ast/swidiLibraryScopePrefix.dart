import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidiLibraryScopePrefix.freezed.dart';

@freezed
class SwidiLibraryScopePrefix with _$SwidiLibraryScopePrefix {
  const factory SwidiLibraryScopePrefix({
    required String name,
  }) = _$SwidiLibraryScopePrefixCtor;

  static const empty = const SwidiLibraryScopePrefix(name: "");

  factory SwidiLibraryScopePrefix.clone({
    required SwidiLibraryScopePrefix swidiLibraryScopePrefix,
    String? name,
  }) =>
      SwidiLibraryScopePrefix(
        name: name ?? swidiLibraryScopePrefix.name,
      );
}
