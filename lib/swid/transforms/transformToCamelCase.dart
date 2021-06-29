import 'package:recase/recase.dart';

String transformToCamelCase({
  required String str,
}) =>
    [
      str[0] == "_" ? "_" : "",
      ReCase(str).camelCase,
    ].join("");
