import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

bool isPrimitive({@required SwidType swidType}) => swidType.when(
      fromSwidInterface: (val) =>
          val.originalPackagePath == "dart:core" &&
          (val.name == "String" ||
              val.name == "String*" ||
              val.name == "bool" ||
              val.name == "bool*" ||
              val.name == "int" ||
              val.name == "int*"),
      fromSwidClass: (_) => false,
      fromSwidDefaultFormalParameter: (_) => false,
      fromSwidFunctionType: (_) => false,
    );
