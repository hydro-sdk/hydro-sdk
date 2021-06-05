

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidClass? rewriteClassReferencesToInterfaceReferencesInClass(
        {required SwidClass swidClass}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType: SwidType.fromSwidClass(swidClass: swidClass),
    )!.when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (_) => null,
    );
