import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionTypeNamedArgument.freezed.dart';

@freezed
class SwidiFunctionTypeNamedArgument
    with
        _$SwidiFunctionTypeNamedArgument,
        HashKeyMixin<SwidiFunctionTypeNamedArgument>,
        HashComparableMixin<SwidiFunctionTypeNamedArgument>
    implements
        ICopyable<
            SwidiFunctionTypeNamedArgument,
            $SwidiFunctionTypeNamedArgumentCopyWith<
                SwidiFunctionTypeNamedArgument>> {
  SwidiFunctionTypeNamedArgument._();

  factory SwidiFunctionTypeNamedArgument({
    required final String name,
    required final SwidiInterface type,
  }) = _$SwidiFunctionTypeNamedArgumentCtor;

  factory SwidiFunctionTypeNamedArgument._clone({
    required final SwidiFunctionTypeNamedArgument
        swidiFunctionTypeNamedArgument,
    final String? name,
    final SwidiInterface? type,
  }) =>
      SwidiFunctionTypeNamedArgument(
        name: name ?? swidiFunctionTypeNamedArgument.name,
        type: type ?? swidiFunctionTypeNamedArgument.type,
      );

  @override
  List<int> get hashableParts => [
        ...name.hashableParts,
        ...type.hashableParts,
      ];

  @override
  SwidiFunctionTypeNamedArgument clone({
    final String? name,
    final SwidiInterface? type,
  }) =>
      SwidiFunctionTypeNamedArgument._clone(
        swidiFunctionTypeNamedArgument: this,
        name: name,
        type: type,
      );
}
