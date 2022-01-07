import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionTypePositionalParameter.freezed.dart';

@freezed
class SwidiFunctionTypePositionalParameter
    with
        _$SwidiFunctionTypePositionalParameter,
        HashKeyMixin<SwidiFunctionTypePositionalParameter>,
        HashComparableMixin<SwidiFunctionTypePositionalParameter>
    implements
        ICopyable<
            SwidiFunctionTypePositionalParameter,
            $SwidiFunctionTypePositionalParameterCopyWith<
                SwidiFunctionTypePositionalParameter>> {
  SwidiFunctionTypePositionalParameter._();

  factory SwidiFunctionTypePositionalParameter({
    required final SwidiType type,
  }) = _$SwidiFunctionTypePositionalParameterCtor;

  factory SwidiFunctionTypePositionalParameter._clone({
    required final SwidiFunctionTypePositionalParameter
        swidiFunctionTypePositionalParameter,
    final SwidiType? type,
  }) =>
      SwidiFunctionTypePositionalParameter(
        type: type ?? swidiFunctionTypePositionalParameter.type,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* type.hashKey.hashableParts;
  }

  @override
  SwidiFunctionTypePositionalParameter clone({
    final SwidiType? type,
  }) =>
      SwidiFunctionTypePositionalParameter._clone(
        swidiFunctionTypePositionalParameter: this,
        type: type,
      );
}
