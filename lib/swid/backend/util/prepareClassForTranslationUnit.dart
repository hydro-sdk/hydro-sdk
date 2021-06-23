import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

Tuple3<SwidClass, SwidClass, SwidClass> prepareClassForTranslationUnit({
  required SwidClass swidClass,
}) =>
    Tuple3(
      removeNonEmitCandidates(
        swidClass: swidClass,
      ),
      removeNonEmitCandidates(
        swidClass: rewriteClassReferencesToInterfaceReferences(
          swidType: SwidType.fromSwidClass(
            swidClass: swidClass,
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
            swidType: SwidType.fromSwidClass(
              swidClass: swidClass,
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
