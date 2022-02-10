import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveClassTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/ir/transforms/markClassReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/markShadowingParentReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferences.dart';
import 'package:hydro_sdk/swid/ir/transforms/rewriteReferencesInClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

Tuple3<SwidClass, SwidClass, SwidClass> prepareClassForTranslationUnit({
  required final SwidClass swidClass,
  required final ISwarsPipeline pipeline,
}) =>
    Tuple3(
      removeNonEmitCandidates(
        pipeline: pipeline,
        swidClass: pipeline.reduceFromTerm(
          TransformPrimitiveClassTypeNamesToTs(
            swidClass: pipeline
                .reduceFromTerm(
                  MarkShadowingParentReferences(
                    swidType: pipeline.reduceFromTerm(
                      MarkClassReferences(
                        swidType: SwidType.fromSwidClass(
                          swidClass: swidClass,
                        ),
                      ),
                    ),
                  ),
                )
                .when(
                  fromSwidInterface: (_) => dartUnknownClass,
                  fromSwidClass: (val) => val,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
                  fromSwidFunctionType: (_) => dartUnknownClass,
                ),
          ),
        ),
      ),
      removeNonEmitCandidates(
        pipeline: pipeline,
        swidClass: pipeline
            .reduceFromTerm(
              RewriteReferences(
                swidType: pipeline.reduceFromTerm(
                  TransformPrimitiveNamesToTs(
                    swidType: pipeline.reduceFromTerm(
                      MarkShadowingParentReferences(
                        swidType: pipeline.reduceFromTerm(
                          MarkClassReferences(
                            swidType: SwidType.fromSwidClass(
                              swidClass: swidClass,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
            .when(
              fromSwidInterface: (_) => dartUnknownClass,
              fromSwidClass: (val) => val,
              fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
              fromSwidFunctionType: (_) => dartUnknownClass,
            ),
      ),
      pipeline.reduceFromTerm(
        ApplySuperTypes(
          swidClass: removeNonEmitCandidates(
            pipeline: pipeline,
            swidClass: pipeline
                .reduceFromTerm(
                  RewriteReferences(
                    swidType: pipeline.reduceFromTerm(
                      TransformPrimitiveNamesToTs(
                        swidType: pipeline.reduceFromTerm(
                          MarkShadowingParentReferences(
                            swidType: pipeline.reduceFromTerm(
                              MarkClassReferences(
                                swidType: SwidType.fromSwidClass(
                                  swidClass: swidClass,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .when(
                  fromSwidInterface: (_) => dartUnknownClass,
                  fromSwidClass: (val) => val,
                  fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
                  fromSwidFunctionType: (_) => dartUnknownClass,
                ),
          ),
        ),
      ),
    );
