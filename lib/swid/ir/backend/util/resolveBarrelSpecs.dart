import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';

BarrelSpec resolveBarrelSpecs({@required List<BarrelMember> members}) {
  return members.fold<List<BarrelSpec>>(
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
              path:
                  transformPackageUri(packageUri: element.originalPackagePath),
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
  ).reduce((value, element) =>
      BarrelSpec(path: value.path.split(path.separator).first, members: [
        BarrelMember.fromBarrelSpec(barrelSpec: value),
        BarrelMember.fromBarrelSpec(barrelSpec: element),
      ]));
}
