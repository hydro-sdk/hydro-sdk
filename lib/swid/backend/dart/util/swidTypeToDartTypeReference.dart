import 'package:code_builder/code_builder.dart' show TypeReference;

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

TypeReference swidTypeToDartTypeReference({
  required final SwidType swidType,
  bool preserveTypeArguments = false,
}) =>
    (({
      required final String name,
    }) =>
        TypeReference(
          (t) => t
            ..symbol = name.isNotEmpty
                ? [
                    name,
                    swidType.nullabilitySuffix == SwidNullabilitySuffix.question
                        ? "?"
                        : "",
                  ].join("")
                : ""
            ..isNullable = false,
        ))(
      name: preserveTypeArguments
          ? removeNullabilitySuffixFromTypeNames(
              swidType: swidType,
            ).name
          : removeTypeArguments(
              str: removeNullabilitySuffixFromTypeNames(
                swidType: swidType,
              ).name,
            ),
    );
