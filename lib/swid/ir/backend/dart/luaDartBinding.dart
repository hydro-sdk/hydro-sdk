import 'package:code_builder/code_builder.dart'
    show Parameter, TypeReference, refer, Method, Expression, Code;
import 'package:meta/meta.dart';

Expression luaDartBinding({@required Code code}) =>
    refer("makeLuaDartFunc").call([], {
      "func": Method((k) => k
        ..requiredParameters.addAll([
          Parameter((i) => i
            ..name = "args"
            ..type = TypeReference(((j) => j
              ..symbol = "List"
              ..types.add(refer("dynamic")))))
        ])
        ..body = code).closure
    });
