import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiNullabilitySuffix.dart';

part 'swidiInterface.freezed.dart';

@freezed
abstract class SwidiInterface with _$SwidiInterface {
  const factory SwidiInterface({
    @required String name,
    @required SwidiNullabilitySuffix nullabilitySuffix,
  }) = _$SwidiInterfaceCtor;
}
