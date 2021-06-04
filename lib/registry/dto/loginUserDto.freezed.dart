// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loginUserDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginUserDto _$LoginUserDtoFromJson(Map<String, dynamic> json) {
  return _$LoginUserDtoCtor.fromJson(json);
}

/// @nodoc
class _$LoginUserDtoTearOff {
  const _$LoginUserDtoTearOff();

// ignore: unused_element
  _$LoginUserDtoCtor call(
      {required String username, required String password}) {
    return _$LoginUserDtoCtor(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  LoginUserDto fromJson(Map<String, Object> json) {
    return LoginUserDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginUserDto = _$LoginUserDtoTearOff();

/// @nodoc
mixin _$LoginUserDto {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginUserDtoCopyWith<LoginUserDto> get copyWith;
}

/// @nodoc
abstract class $LoginUserDtoCopyWith<$Res> {
  factory $LoginUserDtoCopyWith(
          LoginUserDto value, $Res Function(LoginUserDto) then) =
      _$LoginUserDtoCopyWithImpl<$Res>;
  $Res call({String? username, String? password});
}

/// @nodoc
class _$LoginUserDtoCopyWithImpl<$Res> implements $LoginUserDtoCopyWith<$Res> {
  _$LoginUserDtoCopyWithImpl(this._value, this._then);

  final LoginUserDto _value;
  // ignore: unused_field
  final $Res Function(LoginUserDto?) _then;

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
abstract class _$$LoginUserDtoCtorCopyWith<$Res>
    implements $LoginUserDtoCopyWith<$Res> {
  factory _$$LoginUserDtoCtorCopyWith(
          _$LoginUserDtoCtor value, $Res Function(_$LoginUserDtoCtor) then) =
      __$$LoginUserDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String? username, String? password});
}

/// @nodoc
class __$$LoginUserDtoCtorCopyWithImpl<$Res>
    extends _$LoginUserDtoCopyWithImpl<$Res>
    implements _$$LoginUserDtoCtorCopyWith<$Res> {
  __$$LoginUserDtoCtorCopyWithImpl(
      _$LoginUserDtoCtor _value, $Res Function(_$LoginUserDtoCtor) _then)
      : super(_value, (v) => _then(v as _$LoginUserDtoCtor));

  @override
  _$LoginUserDtoCtor get _value => super._value as _$LoginUserDtoCtor;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginUserDtoCtor(
      username: username == freezed ? _value.username : (username as String?)!,
      password: password == freezed ? _value.password : (password as String?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$LoginUserDtoCtor implements _$LoginUserDtoCtor {
  const _$_$LoginUserDtoCtor({required this.username, required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$_$LoginUserDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$LoginUserDtoCtorFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginUserDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$LoginUserDtoCtor &&
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
  _$$LoginUserDtoCtorCopyWith<_$LoginUserDtoCtor> get copyWith =>
      __$$LoginUserDtoCtorCopyWithImpl<_$LoginUserDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$LoginUserDtoCtorToJson(this);
  }
}

abstract class _$LoginUserDtoCtor implements LoginUserDto {
  const factory _$LoginUserDtoCtor(
      {required String username,
      required String password}) = _$_$LoginUserDtoCtor;

  factory _$LoginUserDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$LoginUserDtoCtor.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserDtoCtorCopyWith<_$LoginUserDtoCtor> get copyWith;
}
