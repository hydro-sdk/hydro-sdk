import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidFunctionType rewriteClassReferencesToInterfaceReferencesInFunction(
        {@required SwidFunctionType swidFunctionType}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType:
          SwidType.fromSwidFunctionType(swidFunctionType: swidFunctionType),
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (_) => null,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (val) => val,
    );
