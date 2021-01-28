import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';

part 'barrelSpec.freezed.dart';

@freezed
abstract class BarrelSpec with _$BarrelSpec {
  factory BarrelSpec({
    @required String path,
    @required List<BarrelMember> members,
  }) = _$BarrelSpecCtor;
}
