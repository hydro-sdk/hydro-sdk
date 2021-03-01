import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';

List<SwidFunctionType> tsClassMethodInjectionCandidates(
        {@required List<SwidFunctionType> swidFunctionTypes}) =>
    swidFunctionTypes
        .map((x) => transformPrimitiveFunctionTypeNamesToTs(
            swidFunctionType: transformAccessorName(swidFunctionType: x)))
        .where((x) => !isOperator(swidFunctionType: x))
        .where((x) => !x.swidDeclarationModifiers.hasProtected)
        .toList();
