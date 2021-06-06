

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidFunctionType rewriteClassReferencesToInterfaceReferencesInFunction(
        {required SwidFunctionType swidFunctionType,}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType:
          SwidType.fromSwidFunctionType(swidFunctionType: swidFunctionType),
    ).when(
      fromSwidInterface: (_) => dartUnknownFunction ,
      fromSwidClass: (_) =>dartUnknownFunction,
      fromSwidDefaultFormalParameter: (_) => dartUnknownFunction,
      fromSwidFunctionType: (val) => val,
    );
