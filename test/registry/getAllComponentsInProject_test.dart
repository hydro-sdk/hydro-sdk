import 'package:flutter/material.dart';

import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createMockUserDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
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

      final projectName = "test-project-${Uuid().v4()}";
      final projectDescription = "test project descrption ${Uuid().v4()}";

      final componentName = "test-component-${Uuid().v4()}";
      final componentDescription = "test component descrption ${Uuid().v4()}";

      final createMockUserResult = await api.createMockUser(
          dto: CreateMockUserDto(
        displayName: username,
        email: "${api.hash(Uuid().v4())}@example.com",
        password: Uuid().v4(),
      ));

      final mockUserToken = createMockUserResult.maybeWhen(
        success: (val) => val.result,
        orElse: () => null,
      );

      expect(mockUserToken, isNotNull);
      expect(mockUserToken, isNotEmpty);

      var createProjectResult = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: SessionDto.empty(),
      );

      expect(
          createProjectResult.maybeWhen(
            failure: (_) => true,
            orElse: () => null,
          ),
          true);

      createProjectResult = await api.createProject(
        dto: CreateProjectDto(
          name: projectName,
          description: projectDescription,
        ),
        sessionDto: SessionDto(
          authToken: mockUserToken!,
        ),
      );

      final createProjectSuccessResult = createProjectResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(createProjectSuccessResult, isNotNull);
      expect(createProjectSuccessResult!.result.name, projectName);
      expect(createProjectSuccessResult.result.description, projectDescription);

      var canUpdateProjectResult = await api.canUpdateProjects(
        sessionDto: SessionDto.empty(),
      );

      expect(
          canUpdateProjectResult.maybeWhen(
            failure: (_) => true,
            orElse: () => null,
          ),
          true);

      canUpdateProjectResult = await api.canUpdateProjects(
        sessionDto: SessionDto(
          authToken: mockUserToken,
        ),
      );

      final canUpdateProjectSuccessResult = canUpdateProjectResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(canUpdateProjectSuccessResult, isNotNull);

      var createdProject = canUpdateProjectSuccessResult!.result
          .firstWhereOrNull(
              (x) => x.name == createProjectSuccessResult.result.name)!;

      expect(createdProject, isNotNull);
      expect(createdProject.description,
          createProjectSuccessResult.result.description);

      var createComponentResult = await api.createComponent(
        dto: CreateComponentDto(
          name: componentName,
          description: componentDescription,
          projectId: createProjectSuccessResult.result.id,
        ),
        sessionDto: SessionDto.empty(),
      );

      expect(
          createComponentResult.maybeWhen(
            failure: (_) => true,
            orElse: () => null,
          ),
          true);

      createComponentResult = await api.createComponent(
        dto: CreateComponentDto(
          name: componentName,
          description: componentDescription,
          projectId: createProjectSuccessResult.result.id,
        ),
        sessionDto: SessionDto(
          authToken: mockUserToken,
        ),
      );

      final createComponentSuccessResult = createComponentResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(createComponentSuccessResult, isNotNull);
      expect(createComponentSuccessResult!.result.name, componentName);
      expect(createComponentSuccessResult.result.description,
          componentDescription);

      var canUpdateComponentResult = await api.canUpdateComponents(
        sessionDto: SessionDto(
          authToken: mockUserToken,
        ),
      );

      final canUpdateComponentSuccessResult =
          canUpdateComponentResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(canUpdateComponentSuccessResult, isNotNull);

      expect(canUpdateComponentSuccessResult!.result.first.name,
          createComponentSuccessResult.result.name);
      expect(canUpdateComponentSuccessResult.result.first.description,
          createComponentSuccessResult.result.description);

      var getComponentResult = await api.getComponentByNameInProjectByName(
        projectName: projectName,
        componentName: componentName,
      );

      final getComponentSuccessResult = getComponentResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(getComponentSuccessResult, isNotNull);
      expect(getComponentSuccessResult!.result.name, componentName);
      expect(getComponentSuccessResult.result.isPublic, true);

      final getAllComponentsInProjectResult =
          await api.getAllComponentsInProject(
        projectId: createProjectSuccessResult.result.id,
      );

      final getAllComponentsInProjectSuccessResult =
          getAllComponentsInProjectResult.maybeWhen(
        success: (val) => val,
        orElse: () => null,
      );

      expect(getAllComponentsInProjectSuccessResult, isNotNull);
      expect(getAllComponentsInProjectSuccessResult!.result, isNotEmpty);
      expect(getAllComponentsInProjectSuccessResult.result.first.name,
          createComponentSuccessResult.result.name);
    }, tags: "registry", timeout: const Timeout(Duration(minutes: 5)));
  });
}
