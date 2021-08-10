import 'package:recase/recase.dart';

String transformToCamelCase({
  required final String str,
}) =>
    [
      str[0] == "_" ? "_" : "",
      ReCase(str).camelCase,
    ].join("");
