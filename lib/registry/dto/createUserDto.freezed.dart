// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createUserDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _$CreateUserDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateUserDtoTearOff {
  const _$CreateUserDtoTearOff();

  _$CreateUserDtoCtor call(
      {required String username, required String password}) {
    return _$CreateUserDtoCtor(
      username: username,
      password: password,
    );
  }

  CreateUserDto fromJson(Map<String, Object> json) {
    return CreateUserDto.fromJson(json);
  }
}

/// @nodoc
const $CreateUserDto = _$CreateUserDtoTearOff();

/// @nodoc
mixin _$CreateUserDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

  final CreateUserDto _value;
  // ignore: unused_field
  final $Res Function(CreateUserDto) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreateUserDtoCtorCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$CreateUserDtoCtorCopyWith(
          _$CreateUserDtoCtor value, $Res Function(_$CreateUserDtoCtor) then) =
      __$$CreateUserDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$$CreateUserDtoCtorCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res>
    implements _$$CreateUserDtoCtorCopyWith<$Res> {
  __$$CreateUserDtoCtorCopyWithImpl(
      _$CreateUserDtoCtor _value, $Res Function(_$CreateUserDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreateUserDtoCtor));

  @override
  _$CreateUserDtoCtor get _value => super._value as _$CreateUserDtoCtor;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$CreateUserDtoCtor(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreateUserDtoCtor implements _$CreateUserDtoCtor {
  const _$_$CreateUserDtoCtor({required this.username, required this.password});

  factory _$_$CreateUserDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateUserDtoCtorFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateUserDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateUserDtoCtor &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$$CreateUserDtoCtorCopyWith<_$CreateUserDtoCtor> get copyWith =>
      __$$CreateUserDtoCtorCopyWithImpl<_$CreateUserDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateUserDtoCtorToJson(this);
  }
}

abstract class _$CreateUserDtoCtor implements CreateUserDto {
  const factory _$CreateUserDtoCtor(
      {required String username,
      required String password}) = _$_$CreateUserDtoCtor;

  factory _$CreateUserDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateUserDtoCtor.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserDtoCtorCopyWith<_$CreateUserDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
