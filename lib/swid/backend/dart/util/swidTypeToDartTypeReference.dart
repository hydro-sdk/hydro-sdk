import 'package:code_builder/code_builder.dart' show TypeReference;

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

TypeReference swidTypeToDartTypeReference({
  required SwidType swidType,
}) =>
    TypeReference((t) => t
      ..symbol = swidType.displayName
      ..isNullable =
          swidType.nullabilitySuffix == SwidNullabilitySuffix.question);
