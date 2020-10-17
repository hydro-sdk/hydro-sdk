import 'package:meta/meta.dart';
import 'package:recase/recase.dart';

String transformToPascalCase({@required String str}) => ReCase(str).pascalCase;
