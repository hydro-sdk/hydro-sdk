import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiEmptyConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';

const swidiUnknownInterface = const SwidiInterface(
  name: "Unknown",
  libraryScopePrefix: SwidiLibraryScopePrefix.empty,
  referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
  nullabilitySuffix: SwidiNullabilitySuffix.none,
);

const swidiUnkownDeclaration = const SwidiDeclaration(
  name: "Unknown",
  type: swidiUnknownInterface,
);

const swidiUnknownOptionalParameter = const SwidiOptionalParameter(
  declaration: swidiUnkownDeclaration,
);

const swidiUnknownPositionalParameter = const SwidiPositionalParameter(
  declaration: swidiUnkownDeclaration,
);

const swidiUnknownNamedParameter = const SwidiNamedParameter(
  declaration: swidiUnkownDeclaration,
);

const swidiEmptyConst = const SwidiEmptyConst();
