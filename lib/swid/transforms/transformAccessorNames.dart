import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

SwidClass transformAccessorNames({
  required final SwidClass swidClass,
}) =>
    swidClass.clone(
      methods: swidClass.methods
          .map(
            (x) => transformAccessorName(
              swidFunctionType: x,
            ),
          )
          .toList(),
    );
