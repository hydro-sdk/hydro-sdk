import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

SwidFunctionType transformTstlMethodNames(
        {@required SwidFunctionType swidFunctionType}) =>
    swidFunctionType.name == "toString"
        ? SwidFunctionType.clone(
            swidFunctionType: swidFunctionType, name: "__tostring")
        : swidFunctionType;
