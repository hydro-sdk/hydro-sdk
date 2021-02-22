import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';

String methodInjectionFieldName(
        {@required SwidFunctionType swidFunctionType}) =>
    "_dart_${swidFunctionType.name}";
