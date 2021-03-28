import 'dart:convert';

import 'package:http/http.dart';
import 'package:hydro_sdk/registry/dto/authTokenDto.dart';
import 'package:meta/meta.dart';
import 'package:corsac_jwt/corsac_jwt.dart';

import 'package:hydro_sdk/registry/dto/componentReadDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/createUserDto.dart';
import 'package:hydro_sdk/registry/dto/loginUserDto.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';

class RegistryApi {
  final String baseUrl;

  const RegistryApi({
    @required this.baseUrl,
  });

  Future<UserReadDto> getUser({
    @required String username,
  }) async {
    final response = await get(
      Uri.https(baseUrl, "api/user/${username}"),
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
    @required CreateUserDto dto,
  }) async {
    final response = await post(Uri.https(baseUrl, "api/user"),
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

  Future<SessionDto> login({
    @required LoginUserDto dto,
  }) async {
    final response = await post(Uri.https(baseUrl, "api/user"),
        headers: {
          "content-type": "application/json",
          "accept": "*/*",
        },
        body: jsonEncode(dto.toJson()));

    if (response.statusCode == 201) {
      var token = JWT.parse(response.body);

      return SessionDto(
        authenticatedUser: AuthTokenDto(
            exp: token.getClaim("exp"),
            sub: token.getClaim("sub"),
            username: token.getClaim("username")),
        authToken: response.body,
      );
    }
    return null;
  }

  Future<ProjectEntity> createProject({
    @required CreateProjectDto dto,
    @required SessionDto sessionDto,
  }) async {
    return null;
  }

  Future<CreateComponentResponseDto> createComponent({
    @required CreateComponentDto dto,
    @required SessionDto sessionDto,
  }) async {
    return null;
  }

  Future<List<ProjectEntity>> canUpdateProjects({
    @required SessionDto sessionDto,
  }) async {
    return null;
  }

  Future<List<ComponentReadDto>> canUpdateComponents({
    @required SessionDto sessionDto,
  }) async {
    return null;
  }
}
