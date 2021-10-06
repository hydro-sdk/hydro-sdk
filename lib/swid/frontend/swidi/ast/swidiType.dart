import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiType.freezed.dart';

@freezed
class SwidiType
    with _$SwidiType, HashKeyMixin<SwidiType>, HashComparableMixin<SwidiType> {
  SwidiType._();

  factory SwidiType.fromSwidiInterface({
    required final SwidiInterface swidiInterface,
  }) = _$SwidiTypeFromSwidiInterfaceCtor;

  factory SwidiType.fromSwidiFunctionType({
    required final SwidiFunctionType swidiFunctionType,
  }) = _$SwidiTypeFromSwidiFunctionTypeCtor;

  @override
  List<int> get hashableParts => when(
        fromSwidiInterface: (val) => val.hashableParts,
        fromSwidiFunctionType: (val) => val.hashableParts,
      );

  @override
  SwidiType clone() => when(
        fromSwidiInterface: (val) => SwidiType.fromSwidiInterface(
          swidiInterface: val.clone(),
        ),
        fromSwidiFunctionType: (val) => SwidiType.fromSwidiFunctionType(
          swidiFunctionType: val.clone(),
        ),
      );
}
