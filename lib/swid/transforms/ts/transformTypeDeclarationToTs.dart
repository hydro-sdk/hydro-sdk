import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:meta/meta.dart';

String transformTypeDeclarationToTs({@required SwidType swidType}) =>
    swidType.when(
        fromSwidInterface: (val) => val.name,
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (val) => val.name,
        fromSwidFunctionType: (val) =>
            transformFunctionTypeToTs(swidFunctionType: val)) +
    (swidType.nullabilitySuffix == SwidNullabilitySuffix.question
        ? " | undefined"
        : "");
