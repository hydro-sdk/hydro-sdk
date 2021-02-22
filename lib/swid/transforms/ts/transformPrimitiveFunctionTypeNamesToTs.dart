import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';

SwidFunctionType transformPrimitiveFunctionTypeNamesToTs({@required SwidFunctionType swidFunctionType}) => SwidFunctionType.clone(
    swidFunctionType: swidFunctionType,
    normalParameterTypes: swidFunctionType.normalParameterTypes != null
        ? List.from(swidFunctionType.normalParameterTypes.map((x) =>
            cloneSwidType(swidType: transformPrimitiveNamesToTs(swidType: x))))
        : null,
    optionalParameterTypes: swidFunctionType.optionalParameterTypes != null
        ? List.from(swidFunctionType.optionalParameterTypes.map((x) =>
            cloneSwidType(swidType: transformPrimitiveNamesToTs(swidType: x))))
        : null,
    namedParameterTypes: swidFunctionType.namedParameterTypes != null
        ? Map.from(
            swidFunctionType.namedParameterTypes.map((k, x) => MapEntry(k, cloneSwidType(swidType: transformPrimitiveNamesToTs(swidType: x)))))
        : null,
    returnType: transformPrimitiveNamesToTs(swidType: swidFunctionType.returnType));
