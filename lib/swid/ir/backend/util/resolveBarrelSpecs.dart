import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';

List<BarrelMember> _extractMembers({@required BarrelSpec spec}) =>
    ((List<List<BarrelMember>> members) =>
        members.isNotEmpty
            ? members.reduce((value, element) => [...value, ...element])
            : <BarrelMember>[])(spec.members
        .map((x) => x.when(
              fromSwidEnum: (val) => [BarrelMember.fromSwidEnum(swidEnum: val)],
              fromSwidClass: (val) =>
                  [BarrelMember.fromSwidClass(swidClass: val)],
              fromBarrelSpec: (val) => _extractMembers(spec: val),
            ))
        .where((x) => x != null)
        .toList());

List<BarrelSpec> _groupMembers({@required List<BarrelMember> members}) =>
    members.fold<List<BarrelSpec>>(
      <BarrelSpec>[],
      (previousValue, element) => previousValue.firstWhere(
                  (x) =>
                      x.path ==
                      transformPackageUri(
                          packageUri: element.originalPackagePath),
                  orElse: () => null) ==
              null
          ? [
              ...previousValue,
              BarrelSpec(
                path: transformPackageUri(
                    packageUri: element.originalPackagePath),
                name:
                    transformPackageUri(packageUri: element.originalPackagePath)
                            .split(path.separator)
                            .isNotEmpty
                        ? transformPackageUri(
                                packageUri: element.originalPackagePath)
                            .split(path.separator)
                            .last
                        : transformPackageUri(
                            packageUri: element.originalPackagePath),
                members: [element],
              )
            ]
          : (List.from(previousValue)
            ..setAll(
                previousValue.indexWhere(
                  (x) =>
                      x.path ==
                      transformPackageUri(
                          packageUri: element.originalPackagePath),
                ),
                [
                  BarrelSpec(
                      path: transformPackageUri(
                          packageUri: element.originalPackagePath),
                      name: transformPackageUri(
                                  packageUri: element.originalPackagePath)
                              .split(path.separator)
                              .isNotEmpty
                          ? transformPackageUri(
                                  packageUri: element.originalPackagePath)
                              .split(path.separator)
                              .last
                          : transformPackageUri(
                              packageUri: element.originalPackagePath),
                      members: [
                        ...previousValue
                            .firstWhere(
                              (x) =>
                                  x.path ==
                                  transformPackageUri(
                                      packageUri: element.originalPackagePath),
                            )
                            .members,
                        element,
                      ])
                ])),
    );

BarrelSpec resolveBarrelSpecs({@required List<BarrelMember> members}) {
  return _groupMembers(members: members).reduce((value, element) =>
      BarrelSpec.clone(
          barrelSpec: value,
          path: transformPackageUri(packageUri: value.path)
              .split(path.separator)
              .first,
          name: transformPackageUri(packageUri: value.path)
              .split(path.separator)
              .first,
          members: [
            ..._groupMembers(
              members: _extractMembers(spec: value),
            ).map(
              (x) => BarrelMember.fromBarrelSpec(barrelSpec: x),
            ),
            BarrelMember.fromBarrelSpec(barrelSpec: element),
          ]));
}
