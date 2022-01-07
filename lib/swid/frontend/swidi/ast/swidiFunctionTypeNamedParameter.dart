import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionTypeNamedParameter.freezed.dart';

@freezed
class SwidiFunctionTypeNamedParameter
    with
        _$SwidiFunctionTypeNamedParameter,
        HashKeyMixin<SwidiFunctionTypeNamedParameter>,
        HashComparableMixin<SwidiFunctionTypeNamedParameter>
    implements
        ICopyable<
            SwidiFunctionTypeNamedParameter,
            $SwidiFunctionTypeNamedParameterCopyWith<
                SwidiFunctionTypeNamedParameter>> {
  SwidiFunctionTypeNamedParameter._();

  factory SwidiFunctionTypeNamedParameter({
    required final String name,
    required final SwidiType type,
  }) = _$SwidiFunctionTypeNamedParameterCtor;

  factory SwidiFunctionTypeNamedParameter._clone({
    required final SwidiFunctionTypeNamedParameter
        swidiFunctionTypeNamedParameter,
    final String? name,
    final SwidiType? type,
  }) =>
      SwidiFunctionTypeNamedParameter(
        name: name ?? swidiFunctionTypeNamedParameter.name,
        type: type ?? swidiFunctionTypeNamedParameter.type,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* type.hashKey.hashableParts;
  }

  @override
  SwidiFunctionTypeNamedParameter clone({
    final String? name,
    final SwidiType? type,
  }) =>
      SwidiFunctionTypeNamedParameter._clone(
        swidiFunctionTypeNamedParameter: this,
        name: name,
        type: type,
      );
}
