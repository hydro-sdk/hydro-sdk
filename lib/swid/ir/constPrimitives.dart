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

const dartObject = const SwidInterface(
  name: "Object",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartNullableObject = const SwidInterface(
  name: "Object?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartDouble = const SwidInterface(
  name: "double",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartInt = const SwidInterface(
  name: "int",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartNullableInt = const SwidInterface(
  name: "int?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartNum = const SwidInterface(
  name: "num",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartNullableNum = const SwidInterface(
  name: "num?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartDynamic = const SwidInterface(
  name: "dynamic",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
  typeArguments: [],
);

const dartVoid = const SwidInterface(
  name: "void",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
  typeArguments: [],
);

const dartUnknownInterface = const SwidInterface(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
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
  swidDeclarationModifiers: SwidDeclarationModifiers(
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
  ),
  mixedInClasses: [],
  implementedClasses: [],
  isMixin: false,
  typeFormals: [],
);

const dartUnknownFunction = const SwidFunctionType(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  swidDeclarationModifiers: SwidDeclarationModifiers(
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
  ),
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
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  value: dartUnknownType,
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
