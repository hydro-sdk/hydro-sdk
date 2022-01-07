import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/iSwidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiType.freezed.dart';

@freezed
class SwidiType
    with _$SwidiType, HashKeyMixin<SwidiType>, HashComparableMixin<SwidiType>
    implements ISwidiType<SwidiType> {
  SwidiType._();

  factory SwidiType.fromSwidiInterface({
    required final SwidiInterface swidiInterface,
  }) = _$SwidiTypeFromSwidiInterfaceCtor;

  factory SwidiType.fromSwidiFunctionType({
    required final SwidiFunctionType swidiFunctionType,
  }) = _$SwidiTypeFromSwidiFunctionTypeCtor;

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidiInterface: (val) => val.hashKey.hashableParts,
        fromSwidiFunctionType: (val) => val.hashKey.hashableParts,
      );

  @override
  SwidiNullabilitySuffix get nullabilitySuffix => when(
        fromSwidiInterface: (val) => val.nullabilitySuffix,
        fromSwidiFunctionType: (val) => val.nullabilitySuffix,
      );

  @override
  List<SwidiAnnotation> get annotations => when(
        fromSwidiInterface: (val) => val.annotations,
        fromSwidiFunctionType: (val) => val.annotations,
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
