// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authTokenDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthTokenDto _$AuthTokenDtoFromJson(Map<String, dynamic> json) {
  return _$AuthTokenDtoCtor.fromJson(json);
}

/// @nodoc
class _$AuthTokenDtoTearOff {
  const _$AuthTokenDtoTearOff();

// ignore: unused_element
  _$AuthTokenDtoCtor call(
      {@required String sub, @required String username, @required double exp}) {
    return _$AuthTokenDtoCtor(
      sub: sub,
      username: username,
      exp: exp,
    );
  }

// ignore: unused_element
  AuthTokenDto fromJson(Map<String, Object> json) {
    return AuthTokenDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthTokenDto = _$AuthTokenDtoTearOff();

/// @nodoc
mixin _$AuthTokenDto {
  String get sub;
  String get username;
  double get exp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthTokenDtoCopyWith<AuthTokenDto> get copyWith;
}

/// @nodoc
abstract class $AuthTokenDtoCopyWith<$Res> {
  factory $AuthTokenDtoCopyWith(
          AuthTokenDto value, $Res Function(AuthTokenDto) then) =
      _$AuthTokenDtoCopyWithImpl<$Res>;
  $Res call({String sub, String username, double exp});
}

/// @nodoc
class _$AuthTokenDtoCopyWithImpl<$Res> implements $AuthTokenDtoCopyWith<$Res> {
  _$AuthTokenDtoCopyWithImpl(this._value, this._then);

  final AuthTokenDto _value;
  // ignore: unused_field
  final $Res Function(AuthTokenDto) _then;

  @override
  $Res call({
    Object sub = freezed,
    Object username = freezed,
    Object exp = freezed,
  }) {
    return _then(_value.copyWith(
      sub: sub == freezed ? _value.sub : sub as String,
      username: username == freezed ? _value.username : username as String,
      exp: exp == freezed ? _value.exp : exp as double,
    ));
  }
}

/// @nodoc
abstract class _$$AuthTokenDtoCtorCopyWith<$Res>
    implements $AuthTokenDtoCopyWith<$Res> {
  factory _$$AuthTokenDtoCtorCopyWith(
          _$AuthTokenDtoCtor value, $Res Function(_$AuthTokenDtoCtor) then) =
      __$$AuthTokenDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String sub, String username, double exp});
}

/// @nodoc
class __$$AuthTokenDtoCtorCopyWithImpl<$Res>
    extends _$AuthTokenDtoCopyWithImpl<$Res>
    implements _$$AuthTokenDtoCtorCopyWith<$Res> {
  __$$AuthTokenDtoCtorCopyWithImpl(
      _$AuthTokenDtoCtor _value, $Res Function(_$AuthTokenDtoCtor) _then)
      : super(_value, (v) => _then(v as _$AuthTokenDtoCtor));

  @override
  _$AuthTokenDtoCtor get _value => super._value as _$AuthTokenDtoCtor;

  @override
  $Res call({
    Object sub = freezed,
    Object username = freezed,
    Object exp = freezed,
  }) {
    return _then(_$AuthTokenDtoCtor(
      sub: sub == freezed ? _value.sub : sub as String,
      username: username == freezed ? _value.username : username as String,
      exp: exp == freezed ? _value.exp : exp as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$AuthTokenDtoCtor implements _$AuthTokenDtoCtor {
  const _$_$AuthTokenDtoCtor(
      {@required this.sub, @required this.username, @required this.exp})
      : assert(sub != null),
        assert(username != null),
        assert(exp != null);

  factory _$_$AuthTokenDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$AuthTokenDtoCtorFromJson(json);

  @override
  final String sub;
  @override
  final String username;
  @override
  final double exp;

  @override
  String toString() {
    return 'AuthTokenDto(sub: $sub, username: $username, exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$AuthTokenDtoCtor &&
            (identical(other.sub, sub) ||
                const DeepCollectionEquality().equals(other.sub, sub)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sub) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(exp);

  @JsonKey(ignore: true)
  @override
  _$$AuthTokenDtoCtorCopyWith<_$AuthTokenDtoCtor> get copyWith =>
      __$$AuthTokenDtoCtorCopyWithImpl<_$AuthTokenDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$AuthTokenDtoCtorToJson(this);
  }
}

abstract class _$AuthTokenDtoCtor implements AuthTokenDto {
  const factory _$AuthTokenDtoCtor(
      {@required String sub,
      @required String username,
      @required double exp}) = _$_$AuthTokenDtoCtor;

  factory _$AuthTokenDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$AuthTokenDtoCtor.fromJson;

  @override
  String get sub;
  @override
  String get username;
  @override
  double get exp;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenDtoCtorCopyWith<_$AuthTokenDtoCtor> get copyWith;
}
