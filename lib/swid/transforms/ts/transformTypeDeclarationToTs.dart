import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:meta/meta.dart';

String transformTypeDeclarationToTs({
  @required SwidType swidType,
  bool emitTrailingReturnType = true,
}) =>
    transformPrimitiveNamesToTs(swidType: swidType).when(
        fromSwidInterface: (val) => val.name,
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (val) => val.name,
        fromSwidFunctionType: (val) => transformFunctionTypeToTs(
              swidFunctionType: val,
              emitTrailingReturnType: emitTrailingReturnType,
            )) +
    (swidType.nullabilitySuffix == SwidNullabilitySuffix.question
        ? " | undefined"
        : "");
