import 'package:flutter/material.dart';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
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

      final componentName = "test-component-${Uuid().v4()}";
      final componentDescription = "test component descrption ${Uuid().v4()}";

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

      var createComponentResponse = await api.createComponent(
        dto: CreateComponentDto(
          name: componentName,
          description: componentDescription,
          projectId: createProjectResponse.id,
        ),
        sessionDto: SessionDto.empty(),
      );

      expect(createComponentResponse, isNull);

      createComponentResponse = await api.createComponent(
        dto: CreateComponentDto(
          name: componentName,
          description: componentDescription,
          projectId: createProjectResponse.id,
        ),
        sessionDto: SessionDto(
          authToken: response,
        ),
      );

      expect(createComponentResponse, isNotNull);
      expect(createComponentResponse!.name, componentName);
      expect(createComponentResponse.description, componentDescription);

      var canUpdateComponentResponse = await api.canUpdateComponents(
        sessionDto: SessionDto(
          authToken: response,
        ),
      );

      expect(canUpdateComponentResponse, isNotNull);
      expect(
          canUpdateComponentResponse?.first.name, createComponentResponse.name);
      expect(canUpdateComponentResponse?.first.description,
          createComponentResponse.description);

      var getComponentResponse = await api.getComponentByNameInProjectByName(
        projectName: projectName,
        componentName: componentName,
      );

      expect(getComponentResponse, isNotNull);
      expect(getComponentResponse?.name, componentName);
      expect(getComponentResponse?.isPublic, true);

      var getReleaseChannelsResponse =
          await api.getAllReleaseChannelsByComponentId(
        componentId: getComponentResponse!.id,
      );

      expect(getReleaseChannelsResponse, isNotNull);
      expect(getReleaseChannelsResponse?.isNotEmpty, true);
      expect(getReleaseChannelsResponse?.first.componentId,
          getComponentResponse.id);
      expect(getReleaseChannelsResponse?.first.name, "latest");
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
