import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

class BarrelSpec {
  final String path;
  final List<SwidClass> classMembers;
  final List<BarrelSpec> barrelMembers;

  BarrelSpec({
    @required this.path,
    @required this.classMembers,
    @required this.barrelMembers,
  });
}

List<BarrelSpec> resolveBarrelSpecs({@required List<SwidClass> classes}) {
  return classes.fold<List<BarrelSpec>>(
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
              classMembers: [element],
              barrelMembers: [],
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
                    barrelMembers: previousValue
                        .firstWhere(
                          (x) =>
                              x.path ==
                              transformPackageUri(
                                  packageUri: element.originalPackagePath),
                        )
                        .barrelMembers,
                    classMembers: [
                      ...previousValue
                          .firstWhere(
                            (x) =>
                                x.path ==
                                transformPackageUri(
                                    packageUri: element.originalPackagePath),
                          )
                          .classMembers,
                      element,
                    ])
              ])),
  );
}
