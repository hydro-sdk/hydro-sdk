

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidClass rewriteClassReferencesToInterfaceReferencesInClass(
        {required SwidClass swidClass,}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType: SwidType.fromSwidClass(swidClass: swidClass,),
    ).when(
      fromSwidInterface: (_) => dartUnkownClass ,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => dartUnkownClass,
      fromSwidFunctionType: (_) => dartUnkownClass,
    );
