import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclarationPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';

final swidiUnknownInterface = SwidiInterface(
  typeArguments: [],
  annotations: [],
  name: "Unknown",
  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
  referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
  nullabilitySuffix: SwidiNullabilitySuffix.none,
);

final swidiUnknownType = SwidiType.fromSwidiInterface(
  swidiInterface: swidiUnknownInterface,
);

final swidiUnkownDeclaration = SwidiDeclaration(
  name: "Unknown",
  type: swidiUnknownType,
  defaultConstValue: SwidiConst.fromSwidiEmptyConst(
    swidiEmptyConst: swidiEmptyConst,
  ),
);

final swidiUnknownOptionalParameter = SwidiFunctionDeclarationOptionalParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiUnknownPositionalParameter =
    SwidiFunctionDeclarationPositionalParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiUnknownNamedParameter = SwidiFunctionDeclarationNamedParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiEmptyConst = SwidiEmptyConst();
