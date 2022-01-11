import 'package:hydro_sdk/swid/backend/util/methodIsEmitCandidate.dart';
import 'package:hydro_sdk/swid/ir/analyses/isUnrepresentableStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';

SwidClass removeNonEmitCandidates({
  required final SwidClass swidClass,
  required final ISwarsPipeline pipeline,
}) =>
    SwidClass.clone(
      swidClass: swidClass,
      methods: swidClass.methods
          .where((x) => methodIsEmitCandidate(swidFunctionType: x))
          .toList(),
      staticConstFieldDeclarations: swidClass.staticConstFieldDeclarations
          .where((x) => !pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: swidClass,
                  staticConst: x.value,
                ),
              ))
          .toList(),
      extendedClass: swidClass.extendedClass != null
          ? removeNonEmitCandidates(
              pipeline: pipeline,
              swidClass: swidClass.extendedClass!,
            )
          : null,
      implementedClasses: swidClass.implementedClasses
          .map(
            (x) => removeNonEmitCandidates(swidClass: x, pipeline: pipeline),
          )
          .toList(),
      mixedInClasses: swidClass.mixedInClasses
          .map(
            (x) => removeNonEmitCandidates(
              swidClass: x,
              pipeline: pipeline,
            ),
          )
          .toList(),
    );
