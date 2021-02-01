import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/ir/backend/util/barrelSpec.dart';
import 'package:hydro_sdk/swid/ir/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var barrelSpec = resolveBarrelSpecs(members: [
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
              typeFormals: [])),
      BarrelMember.fromSwidClass(
          swidClass: SwidClass(
              name: "EfficientLengthIterable",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:_internal",
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
              name: "Random",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:math",
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

    expect(barrelSpec.isTopLevel(), true);

    expect(
        DartBarrelLoadNamespaceSymbolDeclaration(barrelSpec: barrelSpec)
            .toDartSource(),
        """
void loadDart({@required HydroState hydroState, @required Context context}) {
  final dart = HydroTable();
  context.env[\'dart\'] = dart;
  loadCore(table: dart, hydroState: hydroState);
  loadUi(table: dart, hydroState: hydroState);
  loadInternal(table: dart, hydroState: hydroState);
  loadMath(table: dart, hydroState: hydroState);
}
""");
  }, tags: "swid");
}
