import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/ts/util/transformIllegalParameterName.dart';

SwidFunctionType transformIllegalParameterNames({
  required final SwidFunctionType swidFunctionType,
}) =>
    swidFunctionType.clone(
      normalParameterNames: swidFunctionType.normalParameterNames
          .map(
            (x) => transformIllegalParameterName(
              name: x,
            ),
          )
          .toList(),
      optionalParameterNames: swidFunctionType.optionalParameterNames
          .map(
            (x) => transformIllegalParameterName(
              name: x,
            ),
          )
          .toList(),
      namedParameterTypes: Map.fromEntries(
        swidFunctionType.namedParameterTypes.entries
            .map(
              (x) => MapEntry(
                  transformIllegalParameterName(
                    name: x.key,
                  ),
                  x.value),
            )
            .toList(),
      ),
    );
