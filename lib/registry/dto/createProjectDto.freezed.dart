// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createProjectDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateProjectDto _$CreateProjectDtoFromJson(Map<String, dynamic> json) {
  return _$CreateProjectDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateProjectDtoTearOff {
  const _$CreateProjectDtoTearOff();

// ignore: unused_element
  _$CreateProjectDtoCtor call(
      {@required String name, @required String description}) {
    return _$CreateProjectDtoCtor(
      name: name,
      description: description,
    );
  }

// ignore: unused_element
  CreateProjectDto fromJson(Map<String, Object> json) {
    return CreateProjectDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateProjectDto = _$CreateProjectDtoTearOff();

/// @nodoc
mixin _$CreateProjectDto {
  String get name;
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreateProjectDtoCopyWith<CreateProjectDto> get copyWith;
}

/// @nodoc
abstract class $CreateProjectDtoCopyWith<$Res> {
  factory $CreateProjectDtoCopyWith(
          CreateProjectDto value, $Res Function(CreateProjectDto) then) =
      _$CreateProjectDtoCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$CreateProjectDtoCopyWithImpl<$Res>
    implements $CreateProjectDtoCopyWith<$Res> {
  _$CreateProjectDtoCopyWithImpl(this._value, this._then);

  final CreateProjectDto _value;
  // ignore: unused_field
  final $Res Function(CreateProjectDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreateProjectDtoCtorCopyWith<$Res>
    implements $CreateProjectDtoCopyWith<$Res> {
  factory _$$CreateProjectDtoCtorCopyWith(_$CreateProjectDtoCtor value,
          $Res Function(_$CreateProjectDtoCtor) then) =
      __$$CreateProjectDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$$CreateProjectDtoCtorCopyWithImpl<$Res>
    extends _$CreateProjectDtoCopyWithImpl<$Res>
    implements _$$CreateProjectDtoCtorCopyWith<$Res> {
  __$$CreateProjectDtoCtorCopyWithImpl(_$CreateProjectDtoCtor _value,
      $Res Function(_$CreateProjectDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreateProjectDtoCtor));

  @override
  _$CreateProjectDtoCtor get _value => super._value as _$CreateProjectDtoCtor;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
  }) {
    return _then(_$CreateProjectDtoCtor(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$CreateProjectDtoCtor implements _$CreateProjectDtoCtor {
  const _$_$CreateProjectDtoCtor(
      {@required this.name, @required this.description})
      : assert(name != null),
        assert(description != null);

  factory _$_$CreateProjectDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateProjectDtoCtorFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateProjectDto(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateProjectDtoCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$$CreateProjectDtoCtorCopyWith<_$CreateProjectDtoCtor> get copyWith =>
      __$$CreateProjectDtoCtorCopyWithImpl<_$CreateProjectDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateProjectDtoCtorToJson(this);
  }
}

abstract class _$CreateProjectDtoCtor implements CreateProjectDto {
  const factory _$CreateProjectDtoCtor(
      {@required String name,
      @required String description}) = _$_$CreateProjectDtoCtor;

  factory _$CreateProjectDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateProjectDtoCtor.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectDtoCtorCopyWith<_$CreateProjectDtoCtor> get copyWith;
}
