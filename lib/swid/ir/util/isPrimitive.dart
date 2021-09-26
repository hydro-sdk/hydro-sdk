import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

bool isPrimitive({
  required final SwidType swidType,
}) =>
    [
          dartString,
          dartNullableString,
          dartStarString,
          dartBool,
          dartNullableBool,
          dartStarBool,
          dartDouble,
          dartNullableDouble,
          dartStarDouble,
          dartInt,
          dartNullableInt,
          dartStarInt,
          dartNum,
          dartNullableNum,
          dartStarNum,
          dartNull,
        ].firstWhereOrNull(
          (x) =>
              swidType.maybeWhen(
                fromSwidInterface: (val) => val.name,
                orElse: () => null,
              ) ==
              x.name,
        ) !=
        null ||
    swidType.originalPackagePath == "dart:core" &&
        //Including TS types here is leaky
        swidType.name == "string" ||
    swidType.name == "number" ||
    swidType.name == "boolean";
