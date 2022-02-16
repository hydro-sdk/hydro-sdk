import 'package:code_builder/code_builder.dart'
    show Parameter, TypeReference, refer, Method, Expression, Code;
import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';

import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

Expression luaDartBinding({
  required final Code? code,
  required final ISwarsPipeline pipeline,
}) =>
    refer(
      [
        pipeline.reduceFromTerm(
          DartImportPrefix(
            swidType: SwidType.fromSwidInterface(
              swidInterface: makeLuaDartFunc,
            ),
          ),
        ),
        makeLuaDartFunc.name,
      ].join("."),
    ).call(
      [],
      {
        "func": Method(
          (k) => k
            ..requiredParameters.addAll(
              [
                Parameter(
                  (i) => i
                    ..name = "$luaCallerArgumentsParameterName"
                    ..type = TypeReference(
                      ((j) => j
                        ..symbol = [
                          pipeline.reduceFromTerm(
                            DartImportPrefix(
                              swidType: SwidType.fromSwidInterface(
                                swidInterface: dartList,
                              ),
                            ),
                          ),
                          dartList.name,
                        ].join(".")
                        ..types.add(
                          refer(
                            [
                              pipeline.reduceFromTerm(
                                DartImportPrefix(
                                  swidType: SwidType.fromSwidInterface(
                                    swidInterface: dartDynamic,
                                  ),
                                ),
                              ),
                              dartDynamic.name,
                            ].join("."),
                          ),
                        )),
                    ),
                )
              ],
            )
            ..body = code,
        ).closure
      },
    );
