import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';

SwidInterface transformPrimitiveSwidTypeNamesToTs(
    {@required SwidInterface swidInterface}) {
  if (swidInterface.originalPackagePath == "dart:core") {
    if (swidInterface.name == "String" ||
        swidInterface.name == "String*" ||
        swidInterface.name == "String?") {
      return swidInterface.copyWith(name: "string");
    } else if (swidInterface.name == "bool" ||
        swidInterface.name == "bool*" ||
        swidInterface.name == "bool?") {
      return swidInterface.copyWith(name: "boolean");
    } else if (swidInterface.name == "int" ||
        swidInterface.name == "int*" ||
        swidInterface.name == "int?") {
      return swidInterface.copyWith(name: "number");
    }
  }

  return swidInterface;
}
