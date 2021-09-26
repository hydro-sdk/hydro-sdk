import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';

import 'package:hydro_sdk/registry/dto/canUpdateComponentsResult.dart';
import 'package:hydro_sdk/registry/dto/canUpdateProjectsResult.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';
import 'package:hydro_sdk/registry/dto/componentSearchDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResult.dart';
import 'package:hydro_sdk/registry/dto/createMockUserDto.dart';
import 'package:hydro_sdk/registry/dto/createMockUserResult.dart';
import 'package:hydro_sdk/registry/dto/createPackageDto.dart';
import 'package:hydro_sdk/registry/dto/createPackageResult.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectResult.dart';
import 'package:hydro_sdk/registry/dto/getAllComponentsInProjectResult.dart';
import 'package:hydro_sdk/registry/dto/getAllReleaseChannelsByComponentIdResult.dart';
import 'package:hydro_sdk/registry/dto/getComponentByIdResult.dart';
import 'package:hydro_sdk/registry/dto/getComponentByNameInProjectByNameResult.dart';
import 'package:hydro_sdk/registry/dto/getLatestMetadataForReleaseChannelIdResult.dart';
import 'package:hydro_sdk/registry/dto/getLatestPackageDto.dart';
import 'package:hydro_sdk/registry/dto/getLatestPackageReadDto.dart';
import 'package:hydro_sdk/registry/dto/getLatestPackageResult.dart';
import 'package:hydro_sdk/registry/dto/getProjectByIdResult.dart';
import 'package:hydro_sdk/registry/dto/getRemainingProjectCreationsResult.dart';
import 'package:hydro_sdk/registry/dto/getUserResult.dart';
import 'package:hydro_sdk/registry/dto/packageReadDto.dart';
import 'package:hydro_sdk/registry/dto/projectCreationsReadDto.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';
import 'package:hydro_sdk/registry/dto/provisionUserResult.dart';
import 'package:hydro_sdk/registry/dto/releaseChannelReadDto.dart';
import 'package:hydro_sdk/registry/dto/searchComponentsResult.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';

class RegistryApi {
  final String scheme;
  final String host;
  final int? port;

  const RegistryApi({
    required this.scheme,
    required this.host,
    this.port,
  });

  String toString() => Uri(
        scheme: scheme,
        host: host,
        port: port,
      ).toString();

  String hash(String str) {
    final output = AccumulatorSink<Digest>();

    final input = sha256.startChunkedConversion(output);

    input.add(str.codeUnits);

    input.close();
    output.close();

    return output.events.single.toString();
  }

  Future<GetUserResult> getUser({
    required String username,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/user/${username}",
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetUserResult.success(
        getUserSuccessResult: GetUserSuccessResult(
          statusCode: response.statusCode,
          result: UserReadDto.fromJson(jsonDecode(response.body)),
        ),
      );
    }

    return GetUserResult.failure(
      getUserFailureResult: GetUserFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CreateMockUserResult> createMockUser({
    required CreateMockUserDto dto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/user/mock-user",
      ),
      headers: {
        "content-type": "application/json",
        "accept": "*/*",
      },
      body: jsonEncode(dto.toJson()),
    );

    if (response.statusCode == 201) {
      return CreateMockUserResult.success(
        createMockUserSuccessResult: CreateMockUserSuccessResult(
          statusCode: response.statusCode,
          result: response.body,
        ),
      );
    }

    return CreateMockUserResult.failure(
      createMockUserFailureResult: CreateMockUserFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CreateProjectResult> createProject({
    required CreateProjectDto dto,
    required SessionDto sessionDto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/project",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
      body: jsonEncode(dto.toJson()),
    );

    if (response.statusCode == 201) {
      return CreateProjectResult.success(
        createProjectSuccessResult: CreateProjectSuccessResult(
          statusCode: response.statusCode,
          result: ProjectEntity.fromJson(jsonDecode(response.body)),
        ),
      );
    }

    return CreateProjectResult.failure(
      createProjectFailureResult: CreateProjectFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CreateComponentResult> createComponent({
    required CreateComponentDto dto,
    required SessionDto sessionDto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/component",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
      body: jsonEncode(dto.toJson()),
    );

    if (response.statusCode == 201) {
      return CreateComponentResult.success(
        createComponentSuccessResult: CreateComponentSuccessResult(
          statusCode: response.statusCode,
          result:
              CreateComponentResponseDto.fromJson(jsonDecode(response.body)),
        ),
      );
    }

    return CreateComponentResult.failure(
      createComponentFailureResult: CreateComponentFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CanUpdateProjectsResult> canUpdateProjects({
    required SessionDto sessionDto,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/project/canUpdate",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 200 || response.statusCode == 304) {
      return CanUpdateProjectsResult.success(
        canUpdateProjectsSuccessResult: CanUpdateProjectsSuccessResult(
          statusCode: response.statusCode,
          result: jsonDecode(response.body)
              .map((x) => ProjectEntity.fromJson(x))
              .toList()
              .cast<ProjectEntity>(),
        ),
      );
    }

    return CanUpdateProjectsResult.failure(
      canUpdateProjectsFailureResult: CanUpdateProjectsFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CanUpdateComponentsResult> canUpdateComponents({
    required SessionDto sessionDto,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/component/canupdate/",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 200) {
      return CanUpdateComponentsResult.success(
        canUpdateComponentsSuccessResult: CanUpdateComponentsSuccessResult(
          statusCode: response.statusCode,
          result: jsonDecode(response.body)
              .map((x) => ComponentReadDto.fromJson(x))
              .toList()
              .cast<ComponentReadDto>(),
        ),
      );
    }

    return CanUpdateComponentsResult.failure(
      canUpdateComponentsFailureResult: CanUpdateComponentsFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<CreatePackageResult> createPackage({
    required CreatePackageDto createPackageDto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/package",
      ),
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode(createPackageDto.toJson()),
    );

    if (response.statusCode == 201) {
      return CreatePackageResult.success(
        createPackageSuccessResult: CreatePackageSuccessResult(
          statusCode: response.statusCode,
          result: const CreatePackageSuccess(),
        ),
      );
    }

    return CreatePackageResult.failure(
      createPackageFailureResult: CreatePackageFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetLatestPackageResult> getLatestPackage({
    required GetLatestPackageDto getLatestPackageDto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/package/latest",
      ),
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode(getLatestPackageDto.toJson()),
    );

    if (response.statusCode == 201) {
      return GetLatestPackageResult.success(
        getLatestPackageSuccessResult: GetLatestPackageSuccessResult(
          result: GetLatestPackageReadDto.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetLatestPackageResult.failure(
      getLatestPackageFailureResult: GetLatestPackageFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<SearchComponentsResult> searchComponents(
      {required String searchTerm}) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/component/search",
        queryParameters: {
          "q": searchTerm,
        },
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return SearchComponentsResult.success(
        searchComponentsResultSuccessResult:
            SearchComponentsResultSuccessResult(
          result: jsonDecode(response.body)
              .map((x) => ComponentSearchDto.fromJson(x))
              .toList()
              .cast<ComponentSearchDto>(),
          statusCode: response.statusCode,
        ),
      );
    }

    return SearchComponentsResult.failure(
      searchComponentsResultFailure: SearchComponentsResultFailure(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetComponentByNameInProjectByNameResult>
      getComponentByNameInProjectByName({
    required String projectName,
    required String componentName,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/component",
        queryParameters: {
          "project": projectName,
          "component": componentName,
        },
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetComponentByNameInProjectByNameResult.success(
        getComponentByNameInProjectByNameSuccessResult:
            GetComponentByNameInProjectByNameSuccessResult(
          result: ComponentReadDto.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetComponentByNameInProjectByNameResult.failure(
      getComponentByNameInProjectByNameFailureResult:
          GetComponentByNameInProjectByNameFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetAllReleaseChannelsByComponentIdResult>
      getAllReleaseChannelsByComponentId({
    required String componentId,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/release-channel/component/${componentId}",
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetAllReleaseChannelsByComponentIdResult.success(
        getAllReleaseChannelsByComponentIdSuccessResult:
            GetAllReleaseChannelsByComponentIdSuccessResult(
          result: jsonDecode(response.body)
              .map((x) => ReleaseChannelReadDto.fromJson(x))
              .toList()
              .cast<ReleaseChannelReadDto>(),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetAllReleaseChannelsByComponentIdResult.failure(
      getAllReleaseChannelsByComponentIdFailureResult:
          GetAllReleaseChannelsByComponentIdFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetLatestMetadataForReleaseChannelIdResult>
      getLatestMetadataForReleaseChannelId({
    required String releaseChannelId,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/package/release-channel/${releaseChannelId}",
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetLatestMetadataForReleaseChannelIdResult.success(
        getLatestMetadataForReleaseChannelIdSuccessResult:
            GetLatestMetadataForReleaseChannelIdSuccessResult(
          result: PackageReadDto.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetLatestMetadataForReleaseChannelIdResult.failure(
      getLatestMetadataForReleaseChannelIdFailureResult:
          GetLatestMetadataForReleaseChannelIdFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetRemainingProjectCreationsResult> getRemainingProjectCreations({
    required SessionDto sessionDto,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/user/remaining-project-creations",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 200) {
      return GetRemainingProjectCreationsResult.success(
        getRemainingProjectCreationsSuccessResult:
            GetRemainingProjectCreationsSuccessResult(
          result: ProjectCreationsReadDto.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetRemainingProjectCreationsResult.failure(
      getRemainingProjectCreationsFailureResult:
          GetRemainingProjectCreationsFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetProjectByIdResult> getProjectById({
    required String projectId,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/project/${projectId}",
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetProjectByIdResult.success(
        getProjectByIdSuccessResult: GetProjectByIdSuccessResult(
          result: ProjectEntity.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetProjectByIdResult.failure(
      getProjectByIdFailureResult: GetProjectByIdFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<ProvisionUserResult> provisionUser({
    required SessionDto sessionDto,
  }) async {
    final response = await post(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/user/provision",
      ),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 201) {
      return ProvisionUserResult.success(
        provisionUserSuccessResult: ProvisionUserSuccessResult(
          result: true,
          statusCode: response.statusCode,
        ),
      );
    }

    return ProvisionUserResult.failure(
      provisionUserFailureResult: ProvisionUserFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetAllComponentsInProjectResult> getAllComponentsInProject({
    required String projectId,
  }) async {
    final response = await get(
      Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: "/api/component/all-for-project",
          queryParameters: {
            "project": projectId,
          }),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetAllComponentsInProjectResult.success(
        getAllComponentsInProjectSuccessResult:
            GetAllComponentsInProjectSuccessResult(
          result: jsonDecode(response.body)
              .map((x) => ComponentReadDto.fromJson(x))
              .toList()
              .cast<ComponentReadDto>(),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetAllComponentsInProjectResult.failure(
      getAllComponentsInProjectFailureResult:
          GetAllComponentsInProjectFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }

  Future<GetComponentByIdResult> getComponentById({
    required String componentId,
  }) async {
    final response = await get(
      Uri(
        scheme: scheme,
        host: host,
        port: port,
        path: "/api/component/${componentId}",
      ),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return GetComponentByIdResult.success(
        getComponentByIdSuccessResult: GetComponentByIdSuccessResult(
          result: ComponentReadDto.fromJson(jsonDecode(response.body)),
          statusCode: response.statusCode,
        ),
      );
    }

    return GetComponentByIdResult.failure(
      getComponentByIdFailureResult: GetComponentByIdFailureResult(
        statusCode: response.statusCode,
        message: response.body,
      ),
    );
  }
}
