import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/util/hashableList.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';

SwidClass transformAccessorNames({required final SwidClass swidClass}) =>
    SwidClass.clone(
      swidClass: swidClass,
      methods: swidClass.methods
          .map((x) => transformAccessorName(
                swidFunctionType: x,
              ))
          .toHashableList(),
    );
