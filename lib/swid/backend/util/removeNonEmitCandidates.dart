import 'package:hydro_sdk/swid/backend/util/methodIsEmitCandidate.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/isUnrepresentableStaticConst.dart';

SwidClass removeNonEmitCandidates({
  required SwidClass swidClass,
}) =>
    SwidClass.clone(
      swidClass: swidClass,
      methods: swidClass.methods
          .where((x) => methodIsEmitCandidate(swidFunctionType: x))
          .toList(),
      staticConstFieldDeclarations: swidClass.staticConstFieldDeclarations
          .where((x) => !isUnrepresentableStaticConst(
                parentClass: swidClass,
                staticConst: x.value,
              ))
          .toList(),
      extendedClass: swidClass.extendedClass != null
          ? removeNonEmitCandidates(
              swidClass: swidClass.extendedClass!,
            )
          : null,
      implementedClasses: swidClass.implementedClasses
          .map((x) => removeNonEmitCandidates(swidClass: x))
          .toList(),
      mixedInClasses: swidClass.mixedInClasses
          .map((x) => removeNonEmitCandidates(swidClass: x))
          .toList(),
    );
