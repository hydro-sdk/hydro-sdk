import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';

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

final swidiUnknownOptionalParameter = SwidiOptionalParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiUnknownPositionalParameter = SwidiPositionalParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiUnknownNamedParameter = SwidiNamedParameter(
  declaration: swidiUnkownDeclaration,
);

final swidiEmptyConst = SwidiEmptyConst();
