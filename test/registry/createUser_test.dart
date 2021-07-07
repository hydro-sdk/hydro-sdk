import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createMockUserDto.dart';
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

      final username = "test${Uuid().v4()}";

      final response = await api.createMockUser(
          dto: CreateMockUserDto(
        displayName: username,
        email: "${api.hash(Uuid().v4())}@example.com",
        password: Uuid().v4(),
      ));

      expect(response, isNotNull);
      expect(response, isNotEmpty);

      print(response);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
