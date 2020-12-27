import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';

bool isOperator({@required SwidFunctionType swidFunctionType}) =>
    swidFunctionType.name == "-" ||
    swidFunctionType.name == "+" ||
    swidFunctionType.name == "*" ||
    swidFunctionType.name == "/" ||
    swidFunctionType.name == "~/" ||
    swidFunctionType.name == "==" ||
    swidFunctionType.name == "%";
