import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:meta/meta.dart';

String methodInjectionFieldName(
        {@required SwidFunctionType swidFunctionType}) =>
    "_dart_${swidFunctionType.name}";
