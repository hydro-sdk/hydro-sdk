import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

bool isPrimitiveMap({required final SwidType swidType}) => swidType.when(
      fromSwidInterface: (val) =>
          val.originalPackagePath == "dart:core" &&
          removeTypeArguments(
                str: val.name,
              ) ==
              "Map" &&
          val.typeArguments.length == 2 &&
          isPrimitive(
            swidType: val.typeArguments.first.type,
          ),
      fromSwidClass: (_) => false,
      fromSwidDefaultFormalParameter: (_) => false,
      fromSwidFunctionType: (_) => false,
    );
