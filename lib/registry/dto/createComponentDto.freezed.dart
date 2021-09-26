// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createComponentDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateComponentDto _$CreateComponentDtoFromJson(Map<String, dynamic> json) {
  return _$CreateComponentDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateComponentDtoTearOff {
  const _$CreateComponentDtoTearOff();

  _$CreateComponentDtoCtor call(
      {required String name,
      required String description,
      required String projectId}) {
    return _$CreateComponentDtoCtor(
      name: name,
      description: description,
      projectId: projectId,
    );
  }

  CreateComponentDto fromJson(Map<String, Object> json) {
    return CreateComponentDto.fromJson(json);
  }
}

/// @nodoc
const $CreateComponentDto = _$CreateComponentDtoTearOff();

/// @nodoc
mixin _$CreateComponentDto {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateComponentDtoCopyWith<CreateComponentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComponentDtoCopyWith<$Res> {
  factory $CreateComponentDtoCopyWith(
          CreateComponentDto value, $Res Function(CreateComponentDto) then) =
      _$CreateComponentDtoCopyWithImpl<$Res>;
  $Res call({String name, String description, String projectId});
}

/// @nodoc
class _$CreateComponentDtoCopyWithImpl<$Res>
    implements $CreateComponentDtoCopyWith<$Res> {
  _$CreateComponentDtoCopyWithImpl(this._value, this._then);

  final CreateComponentDto _value;
  // ignore: unused_field
  final $Res Function(CreateComponentDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreateComponentDtoCtorCopyWith<$Res>
    implements $CreateComponentDtoCopyWith<$Res> {
  factory _$$CreateComponentDtoCtorCopyWith(_$CreateComponentDtoCtor value,
          $Res Function(_$CreateComponentDtoCtor) then) =
      __$$CreateComponentDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String projectId});
}

/// @nodoc
class __$$CreateComponentDtoCtorCopyWithImpl<$Res>
    extends _$CreateComponentDtoCopyWithImpl<$Res>
    implements _$$CreateComponentDtoCtorCopyWith<$Res> {
  __$$CreateComponentDtoCtorCopyWithImpl(_$CreateComponentDtoCtor _value,
      $Res Function(_$CreateComponentDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreateComponentDtoCtor));

  @override
  _$CreateComponentDtoCtor get _value =>
      super._value as _$CreateComponentDtoCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$CreateComponentDtoCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateComponentDtoCtor implements _$CreateComponentDtoCtor {
  const _$_$CreateComponentDtoCtor(
      {required this.name, required this.description, required this.projectId});

  factory _$_$CreateComponentDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateComponentDtoCtorFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String projectId;

  @override
  String toString() {
    return 'CreateComponentDto(name: $name, description: $description, projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentDtoCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.projectId, projectId) ||
                const DeepCollectionEquality()
                    .equals(other.projectId, projectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(projectId);

  @JsonKey(ignore: true)
  @override
  _$$CreateComponentDtoCtorCopyWith<_$CreateComponentDtoCtor> get copyWith =>
      __$$CreateComponentDtoCtorCopyWithImpl<_$CreateComponentDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentDtoCtorToJson(this);
  }
}

abstract class _$CreateComponentDtoCtor implements CreateComponentDto {
  const factory _$CreateComponentDtoCtor(
      {required String name,
      required String description,
      required String projectId}) = _$_$CreateComponentDtoCtor;

  factory _$CreateComponentDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateComponentDtoCtor.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get projectId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateComponentDtoCtorCopyWith<_$CreateComponentDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
