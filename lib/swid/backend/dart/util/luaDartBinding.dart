import 'package:code_builder/code_builder.dart'
    show Parameter, TypeReference, refer, Method, Expression, Code;

import 'package:hydro_sdk/swid/backend/dart/util/luaCallerArgumentsParameterName.dart';

Expression luaDartBinding({required final Code? code}) =>
    refer("makeLuaDartFunc").call([], {
      "func": Method((k) => k
        ..requiredParameters.addAll([
          Parameter((i) => i
            ..name = "$luaCallerArgumentsParameterName"
            ..type = TypeReference(((j) => j
              ..symbol = "List"
              ..types.add(refer("dynamic")))))
        ])
        ..body = code).closure
    });
