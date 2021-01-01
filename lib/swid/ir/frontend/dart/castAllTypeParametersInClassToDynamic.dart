import 'package:hydro_sdk/swid/ir/frontend/dart/castTypeParametersToDynamic.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

SwidClass castAllTypeParametersInClassToDynamic(
        {@required SwidClass swidClass}) =>
    castTypeParametersToDynamic(
            swidType: SwidType.fromSwidClass(swidClass: swidClass))
        .when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (_) => null,
    );
