import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:meta/meta.dart';

SwidClass transformPrimitiveClassTypeNamesToTs(
        {@required SwidClass swidClass}) =>
    SwidClass.clone(
        swidClass: swidClass,
        constructorType: transformPrimitiveFunctionTypeNamesToTs(
          swidFunctionType: swidClass.constructorType,
        ),
        methods: swidClass.methods != null
            ? swidClass.methods
                .map((x) => transformPrimitiveFunctionTypeNamesToTs(
                    swidFunctionType: x))
                .toList()
            : null);
