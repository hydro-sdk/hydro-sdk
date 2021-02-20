import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';

SwidFunctionType transformTstlMethodNames(
        {@required SwidFunctionType swidFunctionType}) =>
    swidFunctionType.name == "toString"
        ? SwidFunctionType.clone(
            swidFunctionType: swidFunctionType, name: "__tostring")
        : swidFunctionType;
