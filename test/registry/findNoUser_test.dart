import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/registry/registryApi.dart';
import 'registryTestUrl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group("", () {
    test("", () async {
      final api = RegistryApi(
        scheme: registryTestScheme!,
        host: registryTestHost!,
        port: registryTestPort,
      );

      final username = "12345";

      final getUserResult = await api.getUser(username: username);

      final result = getUserResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(result, isNull);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
