import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiLibraryScopePrefix.freezed.dart';

@freezed
class SwidiLibraryScopePrefix
    with
        _$SwidiLibraryScopePrefix,
        HashKeyMixin<SwidiLibraryScopePrefix>,
        HashComparableMixin<SwidiLibraryScopePrefix>
    implements
        ICopyable<SwidiLibraryScopePrefix,
            $SwidiLibraryScopePrefixCopyWith<SwidiLibraryScopePrefix>> {
  SwidiLibraryScopePrefix._();

  factory SwidiLibraryScopePrefix({
    required final String name,
  }) = _$SwidiLibraryScopePrefixCtor;

  static final empty = SwidiLibraryScopePrefix(name: "");

  factory SwidiLibraryScopePrefix._clone({
    required final SwidiLibraryScopePrefix swidiLibraryScopePrefix,
    String? name,
  }) =>
      SwidiLibraryScopePrefix(
        name: name ?? swidiLibraryScopePrefix.name,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
  }

  @override
  SwidiLibraryScopePrefix clone({
    final String? name,
  }) =>
      SwidiLibraryScopePrefix._clone(
        swidiLibraryScopePrefix: this,
        name: name,
      );
}
