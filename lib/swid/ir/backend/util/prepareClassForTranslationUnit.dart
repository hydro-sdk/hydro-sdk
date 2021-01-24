import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/ir/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';

Tuple3<SwidClass, SwidClass, SwidClass> prepareClassForTranslationUnit(
        {@required SwidClass swidClass}) =>
    Tuple3(
      removeNonEmitCandidates(swidClass: swidClass),
      removeNonEmitCandidates(
        swidClass: rewriteClassReferencesToInterfaceReferences(
                swidType: SwidType.fromSwidClass(swidClass: swidClass))
            .when(
          fromSwidInterface: (_) => null,
          fromSwidClass: (val) => val,
          fromSwidDefaultFormalParameter: (_) => null,
          fromSwidFunctionType: (_) => null,
        ),
      ),
      SwidClass.mergeSuperClasses(
        swidClass: removeNonEmitCandidates(
          swidClass: rewriteClassReferencesToInterfaceReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))
              .when(
            fromSwidInterface: (_) => null,
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
        ),
      ),
    );
