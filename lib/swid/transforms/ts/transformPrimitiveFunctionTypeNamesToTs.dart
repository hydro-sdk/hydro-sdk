import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';

SwidFunctionType transformPrimitiveFunctionTypeNamesToTs({
  required final SwidFunctionType swidFunctionType,
}) =>
    SwidFunctionType.clone(
      swidFunctionType: swidFunctionType,
      normalParameterTypes: List.from(
        swidFunctionType.normalParameterTypes.map(
          (x) => cloneSwidType(
            swidType: transformPrimitiveNamesToTs(
              swidType: x,
            ),
          ),
        ),
      ),
      optionalParameterTypes: List.from(
        swidFunctionType.optionalParameterTypes.map(
          (x) => cloneSwidType(
            swidType: transformPrimitiveNamesToTs(
              swidType: x,
            ),
          ),
        ),
      ),
      namedParameterTypes: Map.from(
        swidFunctionType.namedParameterTypes.map(
          (k, x) => MapEntry(
            k,
            cloneSwidType(
              swidType: transformPrimitiveNamesToTs(
                swidType: x,
              ),
            ),
          ),
        ),
      ),
      returnType: transformPrimitiveNamesToTs(
        swidType: swidFunctionType.returnType,
      ),
    );
