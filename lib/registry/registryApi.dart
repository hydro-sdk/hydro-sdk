import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
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
    final Response response = await get(
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

  Future<SessionDto> login({
    @required LoginUserDto dto,
  }) async {
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
