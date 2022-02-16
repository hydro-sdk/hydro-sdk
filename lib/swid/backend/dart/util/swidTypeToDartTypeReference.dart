import 'package:code_builder/code_builder.dart' show TypeReference;
import 'package:dartlin/control_flow.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

TypeReference swidTypeToDartTypeReference({
  required final SwidType swidType,
  required final ISwarsPipeline pipeline,
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
      name: swidType.let(
        (it) => pipeline
            .reduceFromTerm(
              ImportPrefixReferences(
                swidType: it,
              ),
            )
            .let(
              (it) => preserveTypeArguments
                  ? removeNullabilitySuffixFromTypeNames(
                      swidType: it,
                    ).name
                  : removeTypeArguments(
                      str: removeNullabilitySuffixFromTypeNames(
                        swidType: it,
                      ).name,
                    ),
            ),
      ),
    );
