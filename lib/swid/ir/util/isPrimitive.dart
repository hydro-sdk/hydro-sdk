import 'package:hydro_sdk/swid/ir/swidType.dart';

bool isPrimitive({required SwidType swidType}) =>
    swidType.originalPackagePath == "dart:core" &&
    (swidType.name == "String" ||
        swidType.name == "String*" ||
        swidType.name == "bool" ||
        swidType.name == "bool*" ||
        swidType.name == "int" ||
        swidType.name == "int*" ||
        swidType.name == "double" ||
        swidType.name == "double*" ||
        //Including TS types here is leaky
        swidType.name == "string" ||
        swidType.name == "number" ||
        swidType.name == "boolean");
