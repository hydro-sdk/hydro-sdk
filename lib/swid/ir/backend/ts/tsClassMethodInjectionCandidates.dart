import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:meta/meta.dart';

List<SwidFunctionType> tsClassMethodInjectionCandidates(
        {@required List<SwidFunctionType> swidFunctionTypes}) =>
    swidFunctionTypes
        .map((x) => transformPrimitiveFunctionTypeNamesToTs(
            swidFunctionType: transformAccessorName(swidFunctionType: x)))
        .where((x) => x.name != "==")
        .where((x) => !x.swidDeclarationModifiers.hasProtected)
        .toList();
