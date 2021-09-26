import 'dart:io';

final registryTestHost = Platform.environment["REGISTRY_TEST_HOST"];
final registryTestPort =
    int.tryParse(Platform.environment["REGISTRY_TEST_PORT"] ?? "");
final registryTestScheme = Platform.environment["REGISTRY_TEST_SCHEME"];
