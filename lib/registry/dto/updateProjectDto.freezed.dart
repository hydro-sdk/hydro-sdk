// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'updateProjectDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProjectDto _$UpdateProjectDtoFromJson(Map<String, dynamic> json) {
  return _$UpdateProjectDtoCtor.fromJson(json);
}

/// @nodoc
class _$UpdateProjectDtoTearOff {
  const _$UpdateProjectDtoTearOff();

  _$UpdateProjectDtoCtor call(
      {required String name, required String description}) {
    return _$UpdateProjectDtoCtor(
      name: name,
      description: description,
    );
  }

  UpdateProjectDto fromJson(Map<String, Object> json) {
    return UpdateProjectDto.fromJson(json);
  }
}

/// @nodoc
const $UpdateProjectDto = _$UpdateProjectDtoTearOff();

/// @nodoc
mixin _$UpdateProjectDto {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProjectDtoCopyWith<UpdateProjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProjectDtoCopyWith<$Res> {
  factory $UpdateProjectDtoCopyWith(
          UpdateProjectDto value, $Res Function(UpdateProjectDto) then) =
      _$UpdateProjectDtoCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$UpdateProjectDtoCopyWithImpl<$Res>
    implements $UpdateProjectDtoCopyWith<$Res> {
  _$UpdateProjectDtoCopyWithImpl(this._value, this._then);

  final UpdateProjectDto _value;
  // ignore: unused_field
  final $Res Function(UpdateProjectDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$UpdateProjectDtoCtorCopyWith<$Res>
    implements $UpdateProjectDtoCopyWith<$Res> {
  factory _$$UpdateProjectDtoCtorCopyWith(_$UpdateProjectDtoCtor value,
          $Res Function(_$UpdateProjectDtoCtor) then) =
      __$$UpdateProjectDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$$UpdateProjectDtoCtorCopyWithImpl<$Res>
    extends _$UpdateProjectDtoCopyWithImpl<$Res>
    implements _$$UpdateProjectDtoCtorCopyWith<$Res> {
  __$$UpdateProjectDtoCtorCopyWithImpl(_$UpdateProjectDtoCtor _value,
      $Res Function(_$UpdateProjectDtoCtor) _then)
      : super(_value, (v) => _then(v as _$UpdateProjectDtoCtor));

  @override
  _$UpdateProjectDtoCtor get _value => super._value as _$UpdateProjectDtoCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$UpdateProjectDtoCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$UpdateProjectDtoCtor implements _$UpdateProjectDtoCtor {
  const _$_$UpdateProjectDtoCtor(
      {required this.name, required this.description});

  factory _$_$UpdateProjectDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$UpdateProjectDtoCtorFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateProjectDto(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$UpdateProjectDtoCtor &&
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
  _$$UpdateProjectDtoCtorCopyWith<_$UpdateProjectDtoCtor> get copyWith =>
      __$$UpdateProjectDtoCtorCopyWithImpl<_$UpdateProjectDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$UpdateProjectDtoCtorToJson(this);
  }
}

abstract class _$UpdateProjectDtoCtor implements UpdateProjectDto {
  const factory _$UpdateProjectDtoCtor(
      {required String name,
      required String description}) = _$_$UpdateProjectDtoCtor;

  factory _$UpdateProjectDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$UpdateProjectDtoCtor.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProjectDtoCtorCopyWith<_$UpdateProjectDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
