import 'package:flutter/material.dart';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/createMockUserDto.dart';
import 'package:hydro_sdk/registry/dto/loginUserDto.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
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
      final password = Uuid().v4();

      final projectName = "test-project-${Uuid().v4()}";
      final projectDescription = "test project descrption ${Uuid().v4()}";

      final response = await api.createMockUser(
          dto: CreateMockUserDto(
        displayName: username,
        email: "${api.hash(Uuid().v4())}@example.com",
        password: Uuid().v4(),
      ));

      expect(response, isNotNull);
      expect(response, isNotEmpty);

      var createProjectResponse = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: SessionDto.empty(),
      );

      expect(createProjectResponse, isNull);

      createProjectResponse = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: SessionDto(
          authToken: response!,
        ),
      );

      expect(createProjectResponse, isNotNull);
      expect(createProjectResponse!.name, projectName);
      expect(createProjectResponse.description, projectDescription);

      var canUpdateProjectResponse = await api.canUpdateProjects(
        sessionDto: SessionDto.empty(),
      );

      expect(canUpdateProjectResponse, isNull);

      canUpdateProjectResponse = await api.canUpdateProjects(
        sessionDto: SessionDto(
          authToken: response,
        ),
      );

      expect(canUpdateProjectResponse, isNotNull);

      var createdProject = canUpdateProjectResponse!
          .firstWhereOrNull((x) => x.name == createProjectResponse!.name)!;

      expect(createdProject, isNotNull);
      expect(createdProject.description, createProjectResponse.description);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
