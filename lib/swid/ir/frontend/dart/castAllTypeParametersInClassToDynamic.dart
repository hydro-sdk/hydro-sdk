import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/castTypeParametersToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

SwidClass castAllTypeParametersInClassToDynamic({
  @required SwidClass swidClass,
  bool preserveTypeParametersInLists = false,
  bool preserveFunctionTypeFormals = false,
}) =>
    castTypeParametersToDynamic(
      swidType: SwidType.fromSwidClass(swidClass: swidClass),
      preserveTypeParametersInLists: preserveTypeParametersInLists,
      preserveFunctionTypeFormals: preserveFunctionTypeFormals,
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (_) => null,
    );
