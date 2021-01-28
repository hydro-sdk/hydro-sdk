import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/ir/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var res = resolveBarrelSpecs(members: [
      BarrelMember.fromSwidClass(
          swidClass: SwidClass(
              name: "Iterable",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              constructorType: null,
              factoryConstructors: [],
              staticMethods: [],
              methods: [],
              implementedClasses: [],
              staticConstFieldDeclarations: [],
              instanceFieldDeclarations: {},
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              mixedInClasses: [],
              extendedClass: null,
              isMixin: false,
              typeFormals: [])),
      BarrelMember.fromSwidClass(
          swidClass: SwidClass(
              name: "Offset",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:ui",
              constructorType: null,
              factoryConstructors: [],
              staticMethods: [],
              methods: [],
              implementedClasses: [],
              staticConstFieldDeclarations: [],
              instanceFieldDeclarations: {},
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              mixedInClasses: [],
              extendedClass: null,
              isMixin: false,
              typeFormals: [])),
      BarrelMember.fromSwidClass(
          swidClass: SwidClass(
              name: "RRect",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:ui",
              constructorType: null,
              factoryConstructors: [],
              staticMethods: [],
              methods: [],
              implementedClasses: [],
              staticConstFieldDeclarations: [],
              instanceFieldDeclarations: {},
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              mixedInClasses: [],
              extendedClass: null,
              isMixin: false,
              typeFormals: [])),
      BarrelMember.fromSwidClass(
          swidClass: SwidClass(
              name: "List",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              constructorType: null,
              factoryConstructors: [],
              staticMethods: [],
              methods: [],
              implementedClasses: [],
              staticConstFieldDeclarations: [],
              instanceFieldDeclarations: {},
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
              mixedInClasses: [],
              extendedClass: null,
              isMixin: false,
              typeFormals: []))
    ]);

    expect(res.path, "dart");
    expect(res.members[0].originalPackagePath, "dart/core");
    expect(
        res.members[0]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[0]
            .originalPackagePath,
        "dart:core");

    expect(
        res.members[0]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[0]
            .maybeWhen(
              fromSwidClass: (val) => val,
              orElse: () => null,
            )
            .name,
        "Iterable");
    expect(
        res.members[0]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[1]
            .maybeWhen(
              fromSwidClass: (val) => val,
              orElse: () => null,
            )
            .name,
        "List");

    expect(res.members[1].originalPackagePath, "dart/ui");
    expect(
        res.members[1]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[0]
            .originalPackagePath,
        "dart:ui");

    expect(
        res.members[1]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[0]
            .maybeWhen(
              fromSwidClass: (val) => val,
              orElse: () => null,
            )
            .name,
        "Offset");
    expect(
        res.members[1]
            .maybeWhen(
              fromBarrelSpec: (val) => val,
              orElse: () => null,
            )
            .members[1]
            .maybeWhen(
              fromSwidClass: (val) => val,
              orElse: () => null,
            )
            .name,
        "RRect");
  }, tags: "swid");
}
