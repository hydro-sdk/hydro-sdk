import 'package:code_builder/code_builder.dart' show TypeReference;
import 'package:dartlin/control_flow.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';

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
            ..symbol = name.isNotEmpty ? name : ""
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
                    ).displayName
                  : removeNullabilitySuffixFromTypeNames(
                      swidType: it.when(
                        fromSwidInterface: (val) => SwidType.fromSwidInterface(
                          swidInterface: val.clone(
                            typeArguments: [],
                          ),
                        ),
                        fromSwidClass: (val) => SwidType.fromSwidClass(
                          swidClass: val.clone(
                            typeFormals: [],
                          ),
                        ),
                        fromSwidDefaultFormalParameter: (val) =>
                            SwidType.fromSwidDefaultFormalParameter(
                          swidDefaultFormalParameter: val,
                        ),
                        fromSwidFunctionType: (val) =>
                            SwidType.fromSwidFunctionType(
                          swidFunctionType: val.clone(
                            typeFormals: [],
                          ),
                        ),
                      ),
                    ).when(
                      fromSwidInterface: (val) => val.displayName,
                      fromSwidClass: (val) => val.name,
                      fromSwidDefaultFormalParameter: (val) => val.name,
                      fromSwidFunctionType: (val) => val.displayName,
                    ),
            ),
      ),
    );
