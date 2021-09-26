import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

bool isList({required final SwidType swidType}) => swidType.when(
      fromSwidInterface: (val) =>
          val.originalPackagePath == "dart:core" &&
          removeTypeArguments(str: val.name) == "List" &&
          val.typeArguments.length == 1,
      fromSwidClass: (_) => false,
      fromSwidDefaultFormalParameter: (_) => false,
      fromSwidFunctionType: (_) => false,
    );
