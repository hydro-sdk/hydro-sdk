import 'package:meta/meta.dart';

String removeNullabilitySuffix({@required String str}) =>
    str.endsWith("*") ? str.substring(0, str.length - 1) : str;
