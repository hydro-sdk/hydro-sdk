import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';

part 'barrelSpec.freezed.dart';

@freezed
abstract class BarrelSpec with _$BarrelSpec {
  factory BarrelSpec({
    required String path,
    required String name,
    required List<BarrelMember> members,
  }) = _$BarrelSpecCtor;

  factory BarrelSpec.clone({
    required BarrelSpec barrelSpec,
    String? path,
    String? name,
    List<BarrelMember>? members,
  }) =>
      BarrelSpec(
        path: path ?? barrelSpec.path,
        name: name ?? barrelSpec.name,
        members: members ?? List.from(barrelSpec.members ?? []),
      );
}

extension BarrelSpecMethods on BarrelSpec {
  bool isTopLevel() => path.split(p.separator).length == 1;
}
