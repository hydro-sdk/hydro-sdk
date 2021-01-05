import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

bool isPrimitiveMap({@required SwidType swidType}) => swidType.when(
      fromSwidInterface: (val) =>
          val.originalPackagePath == "dart:core" &&
          removeTypeArguments(str: val.name) == "Map" &&
          val.typeArguments.length == 2 &&
          isPrimitive(swidType: val.typeArguments.first),
      fromSwidClass: (_) => false,
      fromSwidDefaultFormalParameter: (_) => false,
      fromSwidFunctionType: (_) => false,
    );
