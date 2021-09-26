// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessionDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) {
  return _$SessionDtoCtor.fromJson(json);
}

/// @nodoc
class _$SessionDtoTearOff {
  const _$SessionDtoTearOff();

  _$SessionDtoCtor call({required String authToken}) {
    return _$SessionDtoCtor(
      authToken: authToken,
    );
  }

  SessionDto fromJson(Map<String, Object> json) {
    return SessionDto.fromJson(json);
  }
}

/// @nodoc
const $SessionDto = _$SessionDtoTearOff();

/// @nodoc
mixin _$SessionDto {
  String get authToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDtoCopyWith<SessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDtoCopyWith<$Res> {
  factory $SessionDtoCopyWith(
          SessionDto value, $Res Function(SessionDto) then) =
      _$SessionDtoCopyWithImpl<$Res>;
  $Res call({String authToken});
}

/// @nodoc
class _$SessionDtoCopyWithImpl<$Res> implements $SessionDtoCopyWith<$Res> {
  _$SessionDtoCopyWithImpl(this._value, this._then);

  final SessionDto _value;
  // ignore: unused_field
  final $Res Function(SessionDto) _then;

  @override
  $Res call({
    Object? authToken = freezed,
  }) {
    return _then(_value.copyWith(
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SessionDtoCtorCopyWith<$Res>
    implements $SessionDtoCopyWith<$Res> {
  factory _$$SessionDtoCtorCopyWith(
          _$SessionDtoCtor value, $Res Function(_$SessionDtoCtor) then) =
      __$$SessionDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String authToken});
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
    Object? authToken = freezed,
  }) {
    return _then(_$SessionDtoCtor(
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SessionDtoCtor implements _$SessionDtoCtor {
  const _$_$SessionDtoCtor({required this.authToken});

  factory _$_$SessionDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SessionDtoCtorFromJson(json);

  @override
  final String authToken;

  @override
  String toString() {
    return 'SessionDto(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SessionDtoCtor &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authToken);

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
  const factory _$SessionDtoCtor({required String authToken}) =
      _$_$SessionDtoCtor;

  factory _$SessionDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$SessionDtoCtor.fromJson;

  @override
  String get authToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SessionDtoCtorCopyWith<_$SessionDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
