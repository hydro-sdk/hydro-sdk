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
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

bool _isConstPrimitive({
  required final SwidType swidType,
  required final SwidType constPrimitive,
}) =>
    swidType.name == constPrimitive.name &&
    swidType.originalPackagePath == constPrimitive.originalPackagePath;

bool isDartObject({
  required final SwidType swidType,
}) =>
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: SwidType.fromSwidInterface(
        swidInterface: dartObject,
      ),
    ) ||
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: SwidType.fromSwidInterface(
        swidInterface: dartNullableObject,
      ),
    );

bool isClassDartObject({
  required final SwidClass swidClass,
}) =>
    isDartObject(
      swidType: SwidType.fromSwidClass(
        swidClass: swidClass,
      ),
    );

final emptyDeclarationModifiers = SwidDeclarationModifiers(
  ignoredTransforms: [],
  ignoredAnalyses: [],
  overridenTransforms: [],
  isAbstract: false,
  isGetter: false,
  isOperator: false,
  isSetter: false,
  isStatic: false,
  isSynthetic: false,
  isCovariant: false,
  isExplicitlyCovariant: false,
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

final dartObject = SwidInterface(
  name: "Object",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableObject = SwidInterface(
  name: "Object?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

bool isDartType({
  required final SwidType swidType,
}) =>
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: SwidType.fromSwidInterface(
        swidInterface: dartType,
      ),
    ) ||
    _isConstPrimitive(
      swidType: swidType,
      constPrimitive: SwidType.fromSwidInterface(
        swidInterface: dartNullableType,
      ),
    );

bool isClassDartType({
  required final SwidClass swidClass,
}) =>
    isDartType(
      swidType: SwidType.fromSwidClass(
        swidClass: swidClass,
      ),
    );

final dartType = SwidInterface(
  name: "Type",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableType = SwidInterface(
  name: "Type?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartString = SwidInterface(
  name: "String",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableString = SwidInterface(
  name: "String?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartStarString = SwidInterface(
  name: "String*",
  nullabilitySuffix: SwidNullabilitySuffix.star,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartBool = SwidInterface(
  name: "bool",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableBool = SwidInterface(
  name: "bool?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartStarBool = SwidInterface(
  name: "bool*",
  nullabilitySuffix: SwidNullabilitySuffix.star,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartDouble = SwidInterface(
  name: "double",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableDouble = SwidInterface(
  name: "double?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartStarDouble = SwidInterface(
  name: "double*",
  nullabilitySuffix: SwidNullabilitySuffix.star,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartInt = SwidInterface(
  name: "int",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableInt = SwidInterface(
  name: "int?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartStarInt = SwidInterface(
  name: "int*",
  nullabilitySuffix: SwidNullabilitySuffix.star,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNum = SwidInterface(
  name: "num",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartNullableNum = SwidInterface(
  name: "num?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartStarNum = SwidInterface(
  name: "num*",
  nullabilitySuffix: SwidNullabilitySuffix.star,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
);

final dartDynamic = SwidInterface(
  name: "dynamic",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

final dartVoid = SwidInterface(
  name: "void",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

final dartNull = SwidInterface(
  name: "Null",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

final dartUnknownInterface = SwidInterface(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
  declarationModifiers: emptyDeclarationModifiers,
  typeArguments: [],
);

final dartUnknownType = SwidType.fromSwidInterface(
  swidInterface: dartUnknownInterface,
);

final dartUnknownClass = SwidClass(
  name: "Unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  constructorType: null,
  generativeConstructors: [],
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

final dartUnknownFunction = SwidFunctionType(
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

final dartUnkownTypeFormal = SwidTypeFormal(
  value: SwidTypeFormalValue.fromSwidInterface(
    swidInterface: dartUnknownInterface,
  ),
  swidReferenceDeclarationKind: SwidReferenceDeclarationKind.unknown,
  swidTypeFormalBound: null,
);

final dartUnknownDefaultFormalParameter = SwidDefaultFormalParameter(
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  defaultValueCode: "Unknown",
  value: dartUnknownConst,
  staticType: dartUnknownType,
);

final dartUnkownDefaultFormalParameterEntry = MapEntry(
  "Unknown",
  dartUnknownDefaultFormalParameter,
);

final dartUnknownConst = SwidStaticConst.fromSwidStaticConstFieldReference(
  swidStaticConstFieldReference: SwidStaticConstFieldReference(
    name: "Unknown",
  ),
);
