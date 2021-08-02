import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

bool _isConstPrimitive({
  required SwidType swidType,
  required SwidType constPrimitive,
}) =>
    swidType.name == constPrimitive.name &&
    swidType.originalPackagePath == constPrimitive.originalPackagePath;

bool isDartObject({
  required SwidType swidType,
}) =>
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: const SwidType.fromSwidInterface(
        swidInterface: dartObject,
      ),
    ) ||
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: const SwidType.fromSwidInterface(
        swidInterface: dartNullableObject,
      ),
    );

bool isClassDartObject({
  required SwidClass swidClass,
}) =>
    isDartObject(
      swidType: SwidType.fromSwidClass(
        swidClass: swidClass,
      ),
    );

const emptyDeclarationModifiers = const SwidDeclarationModifiers(
  ignoredTransforms: [],
  ignoredAnalyses: [],
  overridenTransforms: [],
  isAbstract: false,
  isGetter: false,
  isOperator: false,
  isSetter: false,
  isStatic: false,
  isSynthetic: false,
  hasAlwaysThrows: false,
  hasDeprecated: false,
  hasFactory: false,
  hasImplicitReturnType: false,
  hasIsTest: false,
  hasIsTestGroup: false,
  hasJS: false,
  hasLiteral: false,
  hasMustCallSuper: false,
  hasNonVirtual: false,
  hasOptionalTypeArgs: false,
  hasOverride: false,
  hasProtected: false,
  hasRequired: false,
  hasSealed: false,
  hasVisibleForTemplate: false,
  hasVisibleForTesting: false,
  isPublic: true,
);

const dartObject = const SwidInterface(
  name: "Object",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartNullableObject = const SwidInterface(
  name: "Object?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

bool isDartType({
  required SwidType swidType,
}) =>
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: const SwidType.fromSwidInterface(
        swidInterface: dartType,
      ),
    ) ||
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: const SwidType.fromSwidInterface(
        swidInterface: dartNullableType,
      ),
    );

bool isClassDartType({
  required SwidClass swidClass,
}) =>
    isDartType(
      swidType: SwidType.fromSwidClass(
        swidClass: swidClass,
      ),
    );

const dartType = const SwidInterface(
  name: "Type",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartNullableType = const SwidInterface(
  name: "Type?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartDouble = const SwidInterface(
  name: "double",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartInt = const SwidInterface(
  name: "int",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartNullableInt = const SwidInterface(
  name: "int?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartNum = const SwidInterface(
  name: "num",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartNullableNum = const SwidInterface(
  name: "num?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

const dartDynamic = const SwidInterface(
  name: "dynamic",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

const dartVoid = const SwidInterface(
  name: "void",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

const dartUnknownInterface = const SwidInterface(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

const dartUnknownType = const SwidType.fromSwidInterface(
  swidInterface: dartUnknownInterface,
);

const dartUnknownClass = const SwidClass(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  constructorType: null,
  factoryConstructors: [],
  staticMethods: [],
  methods: [],
  staticConstFieldDeclarations: [],
  instanceFieldDeclarations: {},
  declarationModifiers: emptyDeclarationModifiers,
  mixedInClasses: [],
  implementedClasses: [],
  isMixin: false,
  typeFormals: [],
);

const dartUnknownFunction = const SwidFunctionType(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  declarationModifiers: emptyDeclarationModifiers,
  namedParameterTypes: {},
  namedDefaults: {},
  normalParameterNames: [],
  normalParameterTypes: [],
  optionalParameterNames: [],
  optionalParameterTypes: [],
  returnType: dartUnknownType,
  isFactory: false,
  typeFormals: [],
);

const dartUnkownTypeFormal = const SwidTypeFormal(
  value: SwidTypeFormalValue.fromSwidInterface(
    swidInterface: dartUnknownInterface,
  ),
  swidReferenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
);

const dartUnknownDefaultFormalParameter = const SwidDefaultFormalParameter(
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  defaultValueCode: "Unknown",
  value: dartUnknownConst,
  staticType: dartUnknownType,
);

const dartUnkownDefaultFormalParameterEntry = const MapEntry(
  "Unknown",
  dartUnknownDefaultFormalParameter,
);

const dartUnknownConst =
    const SwidStaticConst.fromSwidStaticConstFieldReference(
  swidStaticConstFieldReference: SwidStaticConstFieldReference(
    name: "Unknown",
  ),
);
