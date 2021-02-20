import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';

bool isOperator({@required SwidFunctionType swidFunctionType}) =>
    swidFunctionType.name == "-" ||
    swidFunctionType.name == "|" ||
    swidFunctionType.name == "^" ||
    swidFunctionType.name == "unary-" ||
    swidFunctionType.name == "+" ||
    swidFunctionType.name == "*" ||
    swidFunctionType.name == "/" ||
    swidFunctionType.name == "~/" ||
    swidFunctionType.name == "==" ||
    swidFunctionType.name == "<" ||
    swidFunctionType.name == ">" ||
    swidFunctionType.name == "<=" ||
    swidFunctionType.name == ">=" ||
    swidFunctionType.name == "%" ||
    swidFunctionType.name == "[]" ||
    swidFunctionType.name == "[]=" ||
    swidFunctionType.name == "&";
