import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

String methodInjectionFieldName(
        {required final SwidFunctionType swidFunctionType}) =>
    "_dart_${swidFunctionType.name}";
