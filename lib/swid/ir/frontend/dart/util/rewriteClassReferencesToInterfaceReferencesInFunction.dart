import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';

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
