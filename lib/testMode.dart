import 'dart:io';

enum TestMode { typescript, haxe }

TestMode? getTestMode() {
  var envVar = Platform.environment["HYDRO_TEST_MODE"];

  if (envVar == "ts") {
    return TestMode.typescript;
  }
  if (envVar == "hx") {
    return TestMode.haxe;
  }

  return null;
}
