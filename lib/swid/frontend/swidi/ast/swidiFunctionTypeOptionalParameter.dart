import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionTypeOptionalParameter.freezed.dart';

@freezed
class SwidiFunctionTypeOptionalParameter
    with
        _$SwidiFunctionTypeOptionalParameter,
        HashKeyMixin<SwidiFunctionTypeOptionalParameter>,
        HashComparableMixin<SwidiFunctionTypeOptionalParameter>
    implements
        ICopyable<
            SwidiFunctionTypeOptionalParameter,
            $SwidiFunctionTypeOptionalParameterCopyWith<
                SwidiFunctionTypeOptionalParameter>> {
  SwidiFunctionTypeOptionalParameter._();

  factory SwidiFunctionTypeOptionalParameter({
    required final SwidiType type,
  }) = _$SwidiFunctionTypeOptionalParameterCtor;

  factory SwidiFunctionTypeOptionalParameter._clone({
    required final SwidiFunctionTypeOptionalParameter
        swidiFunctionTypeOptionalParameter,
    final SwidiType? type,
  }) =>
      SwidiFunctionTypeOptionalParameter(
        type: type ?? swidiFunctionTypeOptionalParameter.type,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* type.hashKey.hashableParts;
  }

  @override
  SwidiFunctionTypeOptionalParameter clone({
    final SwidiType? type,
  }) =>
      SwidiFunctionTypeOptionalParameter._clone(
        swidiFunctionTypeOptionalParameter: this,
        type: type,
      );
}
