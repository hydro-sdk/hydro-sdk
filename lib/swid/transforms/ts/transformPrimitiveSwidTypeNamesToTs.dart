import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:meta/meta.dart';

SwidType transformPrimitiveSwidTypeNamesToTs({@required SwidType swidType}) {
  if (swidType.originalPackagePath == "dart:core") {
    if (swidType.name == "String") {
      return SwidType.clone(swidType: swidType, name: "string");
    } else if (swidType.name == "bool") {
      return SwidType.clone(swidType: swidType, name: "boolean");
    }
  }

  return swidType;
}
