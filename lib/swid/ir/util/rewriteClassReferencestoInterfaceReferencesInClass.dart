import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';

SwidClass rewriteClassReferencesToInterfaceReferencesInClass({
  required final SwidClass swidClass,
}) =>
    rewriteClassReferencesToInterfaceReferences(
      swidType: SwidType.fromSwidClass(
        swidClass: swidClass,
      ),
    ).when(
      fromSwidInterface: (_) => dartUnknownClass,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
      fromSwidFunctionType: (_) => dartUnknownClass,
    );
