import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiLibraryScopePrefix.freezed.dart';

@freezed
abstract class SwidiLibraryScopePrefix with _$SwidiLibraryScopePrefix {
  const factory SwidiLibraryScopePrefix({
    @required String name,
  }) = _$SwidiLibraryScopePrefixCtor;

  static const empty = const SwidiLibraryScopePrefix(name: "");
}
