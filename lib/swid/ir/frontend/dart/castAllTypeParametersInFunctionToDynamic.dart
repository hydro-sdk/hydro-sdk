import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/castTypeParametersToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

SwidFunctionType castAllTypeParametersInFunctionToDynamic({
  @required SwidFunctionType swidFunctionType,
  bool preserveTypeParametersInLists = false,
}) =>
    castTypeParametersToDynamic(
      swidType:
          SwidType.fromSwidFunctionType(swidFunctionType: swidFunctionType),
      preserveTypeParametersInLists: preserveTypeParametersInLists,
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (_) => null,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (val) => val,
    );
