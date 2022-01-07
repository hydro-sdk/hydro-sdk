import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'barrelMember.freezed.dart';

@freezed
class BarrelMember
    with
        _$BarrelMember,
        HashKeyMixin<BarrelMember>,
        HashComparableMixin<BarrelMember> {
  BarrelMember._();

  factory BarrelMember.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$FromSwidClass;

  factory BarrelMember.fromSwidEnum({
    required final SwidEnum swidEnum,
  }) = _$FromSwidEnum;

  factory BarrelMember.fromBarrelSpec({
    required final BarrelSpec barrelSpec,
  }) = _$FromBarrelSpec;

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidClass: (val) => val.hashKey.hashableParts,
        fromSwidEnum: (val) => val.hashKey.hashableParts,
        fromBarrelSpec: (val) => val.hashKey.hashableParts,
      );

  @override
  BarrelMember clone() => when(
        fromSwidClass: (val) => BarrelMember.fromSwidClass(
          swidClass: val.clone(),
        ),
        fromSwidEnum: (val) => BarrelMember.fromSwidEnum(
          swidEnum: val.clone(),
        ),
        fromBarrelSpec: (val) => BarrelMember.fromBarrelSpec(
          barrelSpec: val.clone(),
        ),
      );

  String get originalPackagePath => when(
        fromSwidClass: (val) => val.originalPackagePath,
        fromSwidEnum: (val) => val.originalPackagePath,
        fromBarrelSpec: (val) => val.path,
      );

  String get name => when(
        fromSwidClass: (val) => val.name,
        fromSwidEnum: (val) => val.identifier,
        fromBarrelSpec: (val) => val.name,
      );
}
