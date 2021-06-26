import 'package:code_builder/code_builder.dart' show TypeReference;

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

TypeReference swidTypeToDartTypeReference({
  required SwidType swidType,
}) =>
    TypeReference((t) => t
      ..symbol = removeTypeArguments(
        str: removeNullabilitySuffixFromTypeNames(
          swidType: swidType,
        ).name,
      ).isNotEmpty
          ? [
              removeTypeArguments(
                str: removeNullabilitySuffixFromTypeNames(
                  swidType: swidType,
                ).name,
              ),
              swidType.nullabilitySuffix == SwidNullabilitySuffix.question
                  ? "?"
                  : "",
            ].join("")
          : ""
      ..isNullable = false);
