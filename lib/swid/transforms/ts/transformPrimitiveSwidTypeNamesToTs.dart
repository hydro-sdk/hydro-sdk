import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:meta/meta.dart';

SwidInterface transformPrimitiveSwidTypeNamesToTs(
    {@required SwidInterface swidInterface}) {
  if (swidInterface.originalPackagePath == "dart:core") {
    if (swidInterface.name == "String") {
      return swidInterface.copyWith(name: "string");
    } else if (swidInterface.name == "bool") {
      return swidInterface.copyWith(name: "boolean");
    } else if (swidInterface.name == "int") {
      return swidInterface.copyWith(name: "number");
    }
  }

  return swidInterface;
}
