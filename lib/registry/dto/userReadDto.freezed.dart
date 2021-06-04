// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'userReadDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserReadDto _$UserReadDtoFromJson(Map<String, dynamic> json) {
  return _$UserReadDtoCtor.fromJson(json);
}

/// @nodoc
class _$UserReadDtoTearOff {
  const _$UserReadDtoTearOff();

// ignore: unused_element
  _$UserReadDtoCtor call(
      {required String subject, required String username}) {
    return _$UserReadDtoCtor(
      subject: subject,
      username: username,
    );
  }

// ignore: unused_element
  UserReadDto fromJson(Map<String, Object> json) {
    return UserReadDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserReadDto = _$UserReadDtoTearOff();

/// @nodoc
mixin _$UserReadDto {
  String get subject;
  String get username;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserReadDtoCopyWith<UserReadDto> get copyWith;
}

/// @nodoc
abstract class $UserReadDtoCopyWith<$Res> {
  factory $UserReadDtoCopyWith(
          UserReadDto value, $Res Function(UserReadDto) then) =
      _$UserReadDtoCopyWithImpl<$Res>;
  $Res call({String? subject, String? username});
}

/// @nodoc
class _$UserReadDtoCopyWithImpl<$Res> implements $UserReadDtoCopyWith<$Res> {
  _$UserReadDtoCopyWithImpl(this._value, this._then);

  final UserReadDto _value;
  // ignore: unused_field
  final $Res Function(UserReadDto?) _then;

  @override
  $Res call({
    Object? subject = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed ? _value.subject : subject as String?,
      username: username == freezed ? _value.username : username as String?,
    ));
  }
}

/// @nodoc
abstract class _$$UserReadDtoCtorCopyWith<$Res>
    implements $UserReadDtoCopyWith<$Res> {
  factory _$$UserReadDtoCtorCopyWith(
          _$UserReadDtoCtor value, $Res Function(_$UserReadDtoCtor) then) =
      __$$UserReadDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String? subject, String? username});
}

/// @nodoc
class __$$UserReadDtoCtorCopyWithImpl<$Res>
    extends _$UserReadDtoCopyWithImpl<$Res>
    implements _$$UserReadDtoCtorCopyWith<$Res> {
  __$$UserReadDtoCtorCopyWithImpl(
      _$UserReadDtoCtor _value, $Res Function(_$UserReadDtoCtor) _then)
      : super(_value, (v) => _then(v as _$UserReadDtoCtor));

  @override
  _$UserReadDtoCtor get _value => super._value as _$UserReadDtoCtor;

  @override
  $Res call({
    Object? subject = freezed,
    Object? username = freezed,
  }) {
    return _then(_$UserReadDtoCtor(
      subject: subject == freezed ? _value.subject : (subject as String?)!,
      username: username == freezed ? _value.username : (username as String?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$UserReadDtoCtor implements _$UserReadDtoCtor {
  const _$_$UserReadDtoCtor({required this.subject, required this.username})
      : assert(subject != null),
        assert(username != null);

  factory _$_$UserReadDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$UserReadDtoCtorFromJson(json);

  @override
  final String subject;
  @override
  final String username;

  @override
  String toString() {
    return 'UserReadDto(subject: $subject, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$UserReadDtoCtor &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$$UserReadDtoCtorCopyWith<_$UserReadDtoCtor> get copyWith =>
      __$$UserReadDtoCtorCopyWithImpl<_$UserReadDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$UserReadDtoCtorToJson(this);
  }
}

abstract class _$UserReadDtoCtor implements UserReadDto {
  const factory _$UserReadDtoCtor(
      {required String subject,
      required String username}) = _$_$UserReadDtoCtor;

  factory _$UserReadDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$UserReadDtoCtor.fromJson;

  @override
  String get subject;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$UserReadDtoCtorCopyWith<_$UserReadDtoCtor> get copyWith;
}
