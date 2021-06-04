// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createUserDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _$CreateUserDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateUserDtoTearOff {
  const _$CreateUserDtoTearOff();

// ignore: unused_element
  _$CreateUserDtoCtor call(
      {required String username, required String password}) {
    return _$CreateUserDtoCtor(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  CreateUserDto fromJson(Map<String, Object> json) {
    return CreateUserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateUserDto = _$CreateUserDtoTearOff();

/// @nodoc
mixin _$CreateUserDto {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res>;
  $Res call({String? username, String? password});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

  final CreateUserDto _value;
  // ignore: unused_field
  final $Res Function(CreateUserDto?) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String?,
      password: password == freezed ? _value.password : password as String?,
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
  $Res call({String? username, String? password});
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
      username: username == freezed ? _value.username : (username as String?)!,
      password: password == freezed ? _value.password : (password as String?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$CreateUserDtoCtor implements _$CreateUserDtoCtor {
  const _$_$CreateUserDtoCtor(
      {required this.username, required this.password})
      : assert(username != null),
        assert(password != null);

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
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserDtoCtorCopyWith<_$CreateUserDtoCtor> get copyWith;
}
