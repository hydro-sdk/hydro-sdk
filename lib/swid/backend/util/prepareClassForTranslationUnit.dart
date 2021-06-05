
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/backend/util/removeNonEmitCandidates.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

Tuple3<SwidClass, SwidClass, SwidClass> prepareClassForTranslationUnit(
        {required SwidClass swidClass}) =>
    Tuple3(
      removeNonEmitCandidates(swidClass: swidClass),
      removeNonEmitCandidates(
        swidClass: rewriteClassReferencesToInterfaceReferences(
                swidType: SwidType.fromSwidClass(swidClass: swidClass))!
            .when(
          fromSwidInterface: ((_) => null) as SwidClass Function(SwidInterface),
          fromSwidClass: (val) => val,
          fromSwidDefaultFormalParameter: ((_) => null) as SwidClass Function(SwidDefaultFormalParameter),
          fromSwidFunctionType: ((_) => null) as SwidClass Function(SwidFunctionType),
        ),
      ),
      SwidClass.mergeSuperClasses(
        swidClass: removeNonEmitCandidates(
          swidClass: rewriteClassReferencesToInterfaceReferences(
                  swidType: SwidType.fromSwidClass(swidClass: swidClass))!
              .when(
            fromSwidInterface: ((_) => null) as SwidClass Function(SwidInterface),
            fromSwidClass: (val) => val,
            fromSwidDefaultFormalParameter: ((_) => null) as SwidClass Function(SwidDefaultFormalParameter),
            fromSwidFunctionType: ((_) => null) as SwidClass Function(SwidFunctionType),
          ),
        ),
      ),
    );
