import 'package:meta/meta.dart';
import 'package:recase/recase.dart';

String transformToCamelCase({required String str}) => ReCase(str).camelCase;
