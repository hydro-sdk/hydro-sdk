

import 'package:hydro_sdk/swid/backend/ts/tsVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformTypeDeclarationToTs.dart';

String _transformVmDeclarationToTs(
        {required TsVmDeclaration tsVmDeclaration,}) =>
    "${tsVmDeclaration.name}: {\n" +
    tsVmDeclaration.methods
        .map((x) =>
            "${x!.name}: " +
            transformTypeDeclarationToTs(
                swidType: SwidType.fromSwidFunctionType(swidFunctionType: x,),),)
        .toList()
        .join(";\n") +
    tsVmDeclaration.children
        .map((x) => _transformVmDeclarationToTs(tsVmDeclaration: x,),)
        .toList()
        .join("\n") +
    "\n}";

String transformVmDeclarationToTs(
        {required TsVmDeclaration tsVmDeclaration,}) =>
    "declare const " +
    _transformVmDeclarationToTs(tsVmDeclaration: tsVmDeclaration,);
