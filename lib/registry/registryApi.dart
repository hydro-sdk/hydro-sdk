import 'dart:convert';

import 'package:corsac_jwt/corsac_jwt.dart';
import 'package:http/http.dart';


import 'package:hydro_sdk/registry/dto/authTokenDto.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';
import 'package:hydro_sdk/registry/dto/componentSearchDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';
import 'package:hydro_sdk/registry/dto/createPackageDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/createUserDto.dart';
import 'package:hydro_sdk/registry/dto/getPackageDto.dart';
import 'package:hydro_sdk/registry/dto/loginUserDto.dart';
import 'package:hydro_sdk/registry/dto/packageReadDto.dart';
import 'package:hydro_sdk/registry/dto/projectCreationsReadDto.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';
import 'package:hydro_sdk/registry/dto/releaseChannelReadDto.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';

class RegistryApi {
  final String? baseUrl;

  const RegistryApi({
    required this.baseUrl,
  });

  Future<UserReadDto?> getUser({
    required String username,
  }) async {
    final response = await get(
      Uri.https(baseUrl!, "api/user/${username}"),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return UserReadDto.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<bool> createUser({
    required CreateUserDto dto,
  }) async {
    final response = await post(Uri.https(baseUrl!, "api/user"),
        headers: {
          "content-type": "application/json",
          "accept": "*/*",
        },
        body: jsonEncode(dto.toJson()));
    if (response.statusCode == 201) {
      return true;
    }

    return false;
  }

  Future<SessionDto?> login({
    required LoginUserDto dto,
  }) async {
    final response = await post(Uri.https(baseUrl!, "api/login"),
        headers: {
          "content-type": "application/json",
          "accept": "*/*",
        },
        body: jsonEncode(dto.toJson()));

    if (response.statusCode == 201) {
      var token = JWT.parse(response.body);

      return SessionDto(
        authenticatedUser: AuthTokenDto(
            exp: token.getClaim("exp").toInt(),
            sub: token.getClaim("sub"),
            username: token.getClaim("username")),
        authToken: response.body,
      );
    }
    return null;
  }

  Future<ProjectEntity?> createProject({
    required CreateProjectDto dto,
    required SessionDto sessionDto,
  }) async {
    final response = await post(Uri.https(baseUrl!, "api/project"),
        headers: {
          "content-type": "application/json",
          "Authorization": "Bearer ${sessionDto.authToken}",
        },
        body: jsonEncode(dto.toJson()));
    if (response.statusCode == 201) {
      return ProjectEntity.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<CreateComponentResponseDto?> createComponent({
    required CreateComponentDto dto,
    required SessionDto sessionDto,
  }) async {
    final response = await post(Uri.https(baseUrl!, "api/component"),
        headers: {
          "content-type": "application/json",
          "Authorization": "Bearer ${sessionDto.authToken}",
        },
        body: jsonEncode(dto.toJson()));
    if (response.statusCode == 201) {
      return CreateComponentResponseDto.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<List<ProjectEntity>?> canUpdateProjects({
    required SessionDto sessionDto,
  }) async {
    final response = await get(
      Uri.https(
          baseUrl!, "api/project/canUpdate/${sessionDto.authenticatedUser.sub}"),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 200 || response.statusCode == 304) {
      return jsonDecode(response.body)
          .map((x) => ProjectEntity.fromJson(x))
          .toList()
          .cast<ProjectEntity>();
    }

    return null;
  }

  Future<List<ComponentReadDto>?> canUpdateComponents({
    required SessionDto sessionDto,
  }) async {
    final response = await get(
      Uri.https(baseUrl!,
          "api/component/canUpdate/${sessionDto.authenticatedUser.sub}"),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body)
          .map((x) => ComponentReadDto.fromJson(x))
          .toList()
          .cast<ComponentReadDto>();
    }

    return null;
  }

  Future<Response> createPackage({
    required CreatePackageDto createPackageDto,
  }) async {
    final response = await post(Uri.https(baseUrl!, "api/package"),
        headers: {
          "content-type": "application/json",
        },
        body: jsonEncode(createPackageDto.toJson()));

    return response;
  }

  Future<Response> getLatestPackageUri(
      {required GetPackageDto getPackageDto}) async {
    final response = await post(Uri.https(baseUrl!, "api/package/latestUri"),
        headers: {
          "content-type": "application/json",
        },
        body: jsonEncode(getPackageDto.toJson()));

    return response;
  }

  Future<List<ComponentSearchDto>?> searchComponents(
      {required String searchTerm}) async {
    final response = await get(
      Uri.https(baseUrl!, "api/component/search", {
        "q": searchTerm,
      }),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)
          .map((x) => ComponentSearchDto.fromJson(x))
          .toList()
          .cast<ComponentSearchDto>();
    }

    return null;
  }

  Future<ComponentReadDto?> getComponentByNameInProjectByName({
    required String projectName,
    required String componentName,
  }) async {
    final response = await get(
        Uri.https(baseUrl!, "api/component", {
          "project": projectName,
          "component": componentName,
        }),
        headers: {
          "content-type": "application/json",
        });
    if (response.statusCode == 200) {
      return ComponentReadDto.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<List<ReleaseChannelReadDto>?> getAllReleaseChannelsByComponentId(
      {required String componentId}) async {
    final response = await get(
      Uri.https(baseUrl!, "api/release-channel/component/${componentId}"),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)
          .map((x) => ReleaseChannelReadDto.fromJson(x))
          .toList()
          .cast<ReleaseChannelReadDto>();
    }

    return null;
  }

  Future<PackageReadDto?> getLatestMetadataForReleaseChannelId(
      {required String releaseChannelId}) async {
    final response = await get(
      Uri.https(baseUrl!, "api/package/release-channel/${releaseChannelId}"),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return PackageReadDto.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<ProjectCreationsReadDto?> getRemainingProjectCreations(
      {required SessionDto sessionDto}) async {
    final response = await get(
      Uri.https(baseUrl!, "api/user/remaining-project-creations"),
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer ${sessionDto.authToken}",
      },
    );

    if (response.statusCode == 200) {
      return ProjectCreationsReadDto.fromJson(jsonDecode(response.body));
    }

    return null;
  }

  Future<ProjectEntity?> getProjectById({
    required String projectId,
  }) async {
    final response = await get(
      Uri.https(baseUrl!, "api/project/${projectId}"),
      headers: {
        "content-type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return ProjectEntity.fromJson(jsonDecode(response.body));
    }

    return null;
  }
}
