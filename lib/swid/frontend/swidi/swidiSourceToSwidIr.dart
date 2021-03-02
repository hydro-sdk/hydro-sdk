import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/parser/swidiParser.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:meta/meta.dart';

List<SwidIr> swidiSourceToSwidIr({@required String content}) {
  var parseResult = const SwidiParser().build().parse(content);

  if (parseResult.isFailure) {
    throw parseResult.message;
  }

  return parseResult.value
      .cast<SwidiClass>()
      .map((x) =>
          SwidIr.fromSwidClass(swidClass: swidiClassToSwidClass(swidiClass: x)))
      .toList()
      .cast<SwidIr>();
}

SwidClass swidiClassToSwidClass({@required SwidiClass swidiClass}) => SwidClass(
      name: swidiClass.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: swidiClass.libraryScopePrefix.name,
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: swidiClass.methods
          .map((x) => swidiFunctionDeclarationToSwidFunctionType(
              swidiFunctionDeclaration: x))
          .toList(),
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );

SwidFunctionType swidiFunctionDeclarationToSwidFunctionType(
        {@required SwidiFunctionDeclaration swidiFunctionDeclaration}) =>
    SwidFunctionType(
      name: swidiFunctionDeclaration.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes:
          Map.fromEntries(swidiFunctionDeclaration.namedParameters
              .map(
                (x) => MapEntry(
                  x.declaration.name,
                  SwidType.fromSwidInterface(
                    swidInterface: swidiInterfaceToSwidInterface(
                      swidiInterface: x.declaration.type,
                    ),
                  ),
                ),
              )
              .toList()),
      namedDefaults: {},
      normalParameterNames: swidiFunctionDeclaration.positionalParameters
          .map((x) => x.declaration.name)
          .toList(),
      normalParameterTypes: swidiFunctionDeclaration.positionalParameters
          .map(
            (x) => SwidType.fromSwidInterface(
              swidInterface: swidiInterfaceToSwidInterface(
                swidiInterface: x.declaration.type,
              ),
            ),
          )
          .toList(),
      optionalParameterNames: swidiFunctionDeclaration.optionalParameters
          .map((x) => x.declaration.name)
          .toList(),
      optionalParameterTypes: swidiFunctionDeclaration.optionalParameters
          .map(
            (x) => SwidType.fromSwidInterface(
              swidInterface: swidiInterfaceToSwidInterface(
                swidiInterface: x.declaration.type,
              ),
            ),
          )
          .toList(),
      returnType: SwidType.fromSwidInterface(
          swidInterface: swidiInterfaceToSwidInterface(
              swidiInterface: swidiFunctionDeclaration.returnType)),
      isFactory: false,
      typeFormals: [],
    );

SwidInterface swidiInterfaceToSwidInterface(
        {@required SwidiInterface swidiInterface}) =>
    SwidInterface(
      name: swidiInterface.name,
      nullabilitySuffix:
          swidiInterface.nullabilitySuffix == SwidiNullabilitySuffix.question
              ? SwidNullabilitySuffix.question
              : SwidNullabilitySuffix.none,
      originalPackagePath: swidiInterface.libraryScopePrefix.name,
      typeArguments: [],
      referenceDeclarationKind:
          swidiInterface.referenceDeclarationPrefix.name == "class"
              ? SwidReferenceDeclarationKind.classElement
              : swidiInterface.referenceDeclarationPrefix.name == "enum"
                  ? SwidReferenceDeclarationKind.enumElement
                  : swidiInterface.referenceDeclarationPrefix.name == "void"
                      ? SwidReferenceDeclarationKind.voidType
                      : swidiInterface.referenceDeclarationPrefix.name == "type"
                          ? SwidReferenceDeclarationKind.typeParameterType
                          : swidiInterface.referenceDeclarationPrefix.name ==
                                  "dynamic"
                              ? SwidReferenceDeclarationKind.dynamicType
                              : null,
    );
