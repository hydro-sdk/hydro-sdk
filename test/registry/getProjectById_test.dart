import 'package:flutter/material.dart';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/createUserDto.dart';
import 'package:hydro_sdk/registry/dto/loginUserDto.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
import 'package:hydro_sdk/registry/registryApi.dart';
import 'registryTestUrl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  group("", () {
    test("", () async {
      final api = RegistryApi(baseUrl: registryTestUrl);

      final username = "test${Uuid().v4()}";
      final password = Uuid().v4();

      final projectName = "test-project-${Uuid().v4()}";
      final projectDescription = "test project descrption ${Uuid().v4()}";

      final response = await api.createUser(
          dto: CreateUserDto(
        username: username,
        password: password,
      ));

      expect(response, isNotNull);
      expect(response, true);

      var createProjectResponse = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: SessionDto.empty(),
      );

      expect(createProjectResponse, isNull);

      final loginResponse = await (api.login(
          dto: LoginUserDto(
        username: username,
        password: password,
      )) as FutureOr<SessionDto>);

      expect(loginResponse, isNotNull);
      expect(loginResponse.authenticatedUser.username, username);

      createProjectResponse = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: loginResponse,
      );

      expect(createProjectResponse, isNotNull);
      expect(createProjectResponse!.name, projectName);
      expect(createProjectResponse.description, projectDescription);

      var canUpdateProjectResponse = await api.canUpdateProjects(
        sessionDto: SessionDto.empty(),
      );

      expect(canUpdateProjectResponse, isNull);

      canUpdateProjectResponse = await api.canUpdateProjects(
        sessionDto: loginResponse,
      );

      var createdProject = canUpdateProjectResponse!
          .firstWhereOrNull((x) => x.name == createProjectResponse!.name)!;

      expect(createdProject, isNotNull);
      expect(createdProject.description, createProjectResponse.description);

      var firstProjectById = await (api.getProjectById(
        projectId: canUpdateProjectResponse.first.id,
      ) as FutureOr<ProjectEntity>);

      expect(firstProjectById, isNotNull);
      expect(firstProjectById.name, username);

      var lastProjectById = await (api.getProjectById(
        projectId: canUpdateProjectResponse.last.id,
      ) as FutureOr<ProjectEntity>);

      expect(lastProjectById, isNotNull);
      expect(lastProjectById.name, projectName);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
