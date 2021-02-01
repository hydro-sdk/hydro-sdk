import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';

part 'barrelMember.freezed.dart';

@freezed
abstract class BarrelMember with _$BarrelMember {
  factory BarrelMember.fromSwidClass({@required SwidClass swidClass}) =
      _$FromSwidClass;
  factory BarrelMember.fromSwidEnum({@required SwidEnum swidEnum}) =
      _$FromSwidEnum;
  factory BarrelMember.fromBarrelSpec({@required BarrelSpec barrelSpec}) =
      _$FromBarrelSpec;
}

extension BarrelMemberMethods on BarrelMember {
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
