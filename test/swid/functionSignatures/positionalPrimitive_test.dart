import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/swidClass.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:hydro_sdk/swid/transformFunctionTypeToTs.dart';
import 'package:path/path.dart' as path;
import 'package:hydro_sdk/swid/transformPackageUri.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num (int? foo,String bar)
        transformFunctionTypeToTs(
            swidFunctionType: SwidFunctionType(
                name: "",
                originalPackagePath: "",
                normalParameterNames: ["foo", "bar"],
                normalParameterTypes: [
                  SwidType(
                    name: "int",
                    nullabilitySuffix: SwidNullabilitySuffix.question,
                    originalPackagePath: "dart:core",
                  ),
                  SwidType(
                      name: "String",
                      nullabilitySuffix: SwidNullabilitySuffix.star,
                      originalPackagePath: "dart:core"),
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType(
                  name: "num",
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                ))),
        "(foo : int | undefined, bar : String) => num");
  });
}
