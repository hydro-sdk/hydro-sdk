import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveClassTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';

Tuple3<SwidClass, SwidClass, SwidClass> prepareClassForTranslationUnit({
  required final SwidClass swidClass,
  required final ISwarsPipeline pipeline,
}) =>
    Tuple3(
      removeNonEmitCandidates(
        swidClass: pipeline.reduceFromTerm(
          TransformPrimitiveClassTypeNamesToTs(
            swidClass: swidClass,
          ),
        ),
      ),
      removeNonEmitCandidates(
        swidClass: rewriteClassReferencesToInterfaceReferences(
          swidType: pipeline.reduceFromTerm(
            TransformPrimitiveNamesToTs(
              swidType: SwidType.fromSwidClass(
                swidClass: swidClass,
              ),
            ),
          ),
        ).when(
          fromSwidInterface: (_) => dartUnknownClass,
          fromSwidClass: (val) => val,
          fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
          fromSwidFunctionType: (_) => dartUnknownClass,
        ),
      ),
      SwidClass.mergeSuperClasses(
        swidClass: removeNonEmitCandidates(
          swidClass: rewriteClassReferencesToInterfaceReferences(
            swidType: pipeline.reduceFromTerm(
              TransformPrimitiveNamesToTs(
                swidType: SwidType.fromSwidClass(
                  swidClass: swidClass,
                ),
              ),
            ),
          ).when(
            fromSwidInterface: (_) => dartUnknownClass,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
            fromSwidFunctionType: (_) => dartUnknownClass,
          ),
        ),
      ),
    );
