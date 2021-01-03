import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidClass rewriteClassReferencesToInterfaceReferencesInClass(
        {@required SwidClass swidClass}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType: SwidType.fromSwidClass(swidClass: swidClass),
    ).when(
      fromSwidInterface: (_) => null,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => null,
      fromSwidFunctionType: (_) => null,
    );
