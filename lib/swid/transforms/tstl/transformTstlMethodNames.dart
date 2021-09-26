import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

SwidFunctionType transformTstlMethodNames(
        {required final SwidFunctionType swidFunctionType}) =>
    swidFunctionType.name == "toString"
        ? SwidFunctionType.clone(
            swidFunctionType: swidFunctionType, name: "__tostring")
        : swidFunctionType;
