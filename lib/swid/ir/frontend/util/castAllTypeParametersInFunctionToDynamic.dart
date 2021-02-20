import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/castTypeParametersToDynamic.dart';

SwidFunctionType castAllTypeParametersInFunctionToDynamic({
  @required SwidFunctionType swidFunctionType,
  bool preserveTypeParametersInLists = false,
  bool preserveFunctionTypeFormals = false,
}) =>
    castTypeParametersToDynamic(
      swidType:
          SwidType.fromSwidFunctionType(swidFunctionType: swidFunctionType),
      preserveTypeParametersInLists: preserveTypeParametersInLists,
      preserveFunctionTypeFormals: preserveFunctionTypeFormals,
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (_) => null,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (val) => val,
    );
