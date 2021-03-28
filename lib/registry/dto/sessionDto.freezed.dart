// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sessionDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) {
  return _$SessionDtoCtor.fromJson(json);
}

/// @nodoc
class _$SessionDtoTearOff {
  const _$SessionDtoTearOff();

// ignore: unused_element
  _$SessionDtoCtor call(
      {@required AuthTokenDto authenticatedUser, @required String authToken}) {
    return _$SessionDtoCtor(
      authenticatedUser: authenticatedUser,
      authToken: authToken,
    );
  }

// ignore: unused_element
  SessionDto fromJson(Map<String, Object> json) {
    return SessionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SessionDto = _$SessionDtoTearOff();

/// @nodoc
mixin _$SessionDto {
  AuthTokenDto get authenticatedUser;
  String get authToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SessionDtoCopyWith<SessionDto> get copyWith;
}

/// @nodoc
abstract class $SessionDtoCopyWith<$Res> {
  factory $SessionDtoCopyWith(
          SessionDto value, $Res Function(SessionDto) then) =
      _$SessionDtoCopyWithImpl<$Res>;
  $Res call({AuthTokenDto authenticatedUser, String authToken});

  $AuthTokenDtoCopyWith<$Res> get authenticatedUser;
}

/// @nodoc
class _$SessionDtoCopyWithImpl<$Res> implements $SessionDtoCopyWith<$Res> {
  _$SessionDtoCopyWithImpl(this._value, this._then);

  final SessionDto _value;
  // ignore: unused_field
  final $Res Function(SessionDto) _then;

  @override
  $Res call({
    Object authenticatedUser = freezed,
    Object authToken = freezed,
  }) {
    return _then(_value.copyWith(
      authenticatedUser: authenticatedUser == freezed
          ? _value.authenticatedUser
          : authenticatedUser as AuthTokenDto,
      authToken: authToken == freezed ? _value.authToken : authToken as String,
    ));
  }

  @override
  $AuthTokenDtoCopyWith<$Res> get authenticatedUser {
    if (_value.authenticatedUser == null) {
      return null;
    }
    return $AuthTokenDtoCopyWith<$Res>(_value.authenticatedUser, (value) {
      return _then(_value.copyWith(authenticatedUser: value));
    });
  }
}

/// @nodoc
abstract class _$$SessionDtoCtorCopyWith<$Res>
    implements $SessionDtoCopyWith<$Res> {
  factory _$$SessionDtoCtorCopyWith(
          _$SessionDtoCtor value, $Res Function(_$SessionDtoCtor) then) =
      __$$SessionDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({AuthTokenDto authenticatedUser, String authToken});

  @override
  $AuthTokenDtoCopyWith<$Res> get authenticatedUser;
}

/// @nodoc
class __$$SessionDtoCtorCopyWithImpl<$Res>
    extends _$SessionDtoCopyWithImpl<$Res>
    implements _$$SessionDtoCtorCopyWith<$Res> {
  __$$SessionDtoCtorCopyWithImpl(
      _$SessionDtoCtor _value, $Res Function(_$SessionDtoCtor) _then)
      : super(_value, (v) => _then(v as _$SessionDtoCtor));

  @override
  _$SessionDtoCtor get _value => super._value as _$SessionDtoCtor;

  @override
  $Res call({
    Object authenticatedUser = freezed,
    Object authToken = freezed,
  }) {
    return _then(_$SessionDtoCtor(
      authenticatedUser: authenticatedUser == freezed
          ? _value.authenticatedUser
          : authenticatedUser as AuthTokenDto,
      authToken: authToken == freezed ? _value.authToken : authToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SessionDtoCtor implements _$SessionDtoCtor {
  const _$_$SessionDtoCtor(
      {@required this.authenticatedUser, @required this.authToken})
      : assert(authenticatedUser != null),
        assert(authToken != null);

  factory _$_$SessionDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SessionDtoCtorFromJson(json);

  @override
  final AuthTokenDto authenticatedUser;
  @override
  final String authToken;

  @override
  String toString() {
    return 'SessionDto(authenticatedUser: $authenticatedUser, authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SessionDtoCtor &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                const DeepCollectionEquality()
                    .equals(other.authenticatedUser, authenticatedUser)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticatedUser) ^
      const DeepCollectionEquality().hash(authToken);

  @JsonKey(ignore: true)
  @override
  _$$SessionDtoCtorCopyWith<_$SessionDtoCtor> get copyWith =>
      __$$SessionDtoCtorCopyWithImpl<_$SessionDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SessionDtoCtorToJson(this);
  }
}

abstract class _$SessionDtoCtor implements SessionDto {
  const factory _$SessionDtoCtor(
      {@required AuthTokenDto authenticatedUser,
      @required String authToken}) = _$_$SessionDtoCtor;

  factory _$SessionDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$SessionDtoCtor.fromJson;

  @override
  AuthTokenDto get authenticatedUser;
  @override
  String get authToken;
  @override
  @JsonKey(ignore: true)
  _$$SessionDtoCtorCopyWith<_$SessionDtoCtor> get copyWith;
}