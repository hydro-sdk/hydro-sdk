import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createUserDto.dart';
import 'package:hydro_sdk/registry/registryApi.dart';
import 'registryTestUrl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group("", () {
    test("", () async {
      final api = RegistryApi(baseUrl: registryTestUrl);

      final username = "test${Uuid().v4()}";

      final response = await api.createUser(
          dto: CreateUserDto(
        username: username,
        password: Uuid().v4(),
      ));

      expect(response, isNotNull);
      expect(response, true);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
