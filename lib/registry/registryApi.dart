import 'package:hydro_sdk/registry/dto/componentReadDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentDto.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';
import 'package:hydro_sdk/registry/dto/createProjectDto.dart';
import 'package:hydro_sdk/registry/dto/loginUserDto.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';
import 'package:hydro_sdk/registry/dto/sessionDto.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';
import 'package:meta/meta.dart';

abstract class RegistryApi {
  final String baseUrl;

  const RegistryApi({
    @required this.baseUrl,
  });

  Future<UserReadDto> getUser({
    @required String username,
  });

  Future<SessionDto> login({
    @required LoginUserDto dto,
  });

  Future<ProjectEntity> createProject({
    @required CreateProjectDto dto,
    @required SessionDto sessionDto,
  });

  Future<CreateComponentResponseDto> createComponent({
    @required CreateComponentDto dto,
    @required SessionDto sessionDto,
  });

  Future<List<ProjectEntity>> canUpdateProjects({
    @required SessionDto sessionDto,
  });

  Future<List<ComponentReadDto>> canUpdateComponents({
    @required SessionDto sessionDto,
  });
}
