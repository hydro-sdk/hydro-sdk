import 'package:hydro_sdk/swid/transforms/ts/mapPrimitiveSwidTypeNameToPrimitiveTsTypeName.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';

SwidInterface transformPrimitiveSwidTypeNamesToTs(
    {@required SwidInterface swidInterface}) {
  if (swidInterface.originalPackagePath == "dart:core") {
    return swidInterface.copyWith(
        name: mapPrimitiveSwidTypeNameToPrimitiveTsTypeName(
            str: swidInterface.name));
  }

  return swidInterface;
}
