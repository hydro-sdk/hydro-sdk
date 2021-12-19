import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;

import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'barrelSpec.freezed.dart';

@freezed
class BarrelSpec
    with
        _$BarrelSpec,
        HashKeyMixin<BarrelSpec>,
        HashComparableMixin<BarrelSpec> {
  BarrelSpec._();

  factory BarrelSpec({
    required final String path,
    required final String name,
    required final List<BarrelMember> members,
  }) = _$BarrelSpecCtor;

  factory BarrelSpec.clone({
    required final BarrelSpec barrelSpec,
    String? path,
    String? name,
    List<BarrelMember>? members,
  }) =>
      BarrelSpec(
        path: path ?? barrelSpec.path,
        name: name ?? barrelSpec.name,
        members: members ?? List.from(barrelSpec.members),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [
      ...path.codeUnits,
    ];
    yield [
      ...name.codeUnits,
    ];
    yield* members.hashableParts;
  }

  @override
  BarrelSpec clone({
    final String? path,
    final String? name,
    final List<BarrelMember>? members,
  }) =>
      BarrelSpec.clone(
        barrelSpec: this,
        path: path,
        name: name,
        members: members,
      );

  bool isTopLevel() => path.split(p.separator).length == 1;
}
