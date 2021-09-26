// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createMockUserDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMockUserDto _$CreateMockUserDtoFromJson(Map<String, dynamic> json) {
  return _$CreateMockUserDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateMockUserDtoTearOff {
  const _$CreateMockUserDtoTearOff();

  _$CreateMockUserDtoCtor call(
      {required String displayName,
      required String email,
      required String password}) {
    return _$CreateMockUserDtoCtor(
      displayName: displayName,
      email: email,
      password: password,
    );
  }

  CreateMockUserDto fromJson(Map<String, Object> json) {
    return CreateMockUserDto.fromJson(json);
  }
}

/// @nodoc
const $CreateMockUserDto = _$CreateMockUserDtoTearOff();

/// @nodoc
mixin _$CreateMockUserDto {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMockUserDtoCopyWith<CreateMockUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMockUserDtoCopyWith<$Res> {
  factory $CreateMockUserDtoCopyWith(
          CreateMockUserDto value, $Res Function(CreateMockUserDto) then) =
      _$CreateMockUserDtoCopyWithImpl<$Res>;
  $Res call({String displayName, String email, String password});
}

/// @nodoc
class _$CreateMockUserDtoCopyWithImpl<$Res>
    implements $CreateMockUserDtoCopyWith<$Res> {
  _$CreateMockUserDtoCopyWithImpl(this._value, this._then);

  final CreateMockUserDto _value;
  // ignore: unused_field
  final $Res Function(CreateMockUserDto) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreateMockUserDtoCtorCopyWith<$Res>
    implements $CreateMockUserDtoCopyWith<$Res> {
  factory _$$CreateMockUserDtoCtorCopyWith(_$CreateMockUserDtoCtor value,
          $Res Function(_$CreateMockUserDtoCtor) then) =
      __$$CreateMockUserDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String displayName, String email, String password});
}

/// @nodoc
class __$$CreateMockUserDtoCtorCopyWithImpl<$Res>
    extends _$CreateMockUserDtoCopyWithImpl<$Res>
    implements _$$CreateMockUserDtoCtorCopyWith<$Res> {
  __$$CreateMockUserDtoCtorCopyWithImpl(_$CreateMockUserDtoCtor _value,
      $Res Function(_$CreateMockUserDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreateMockUserDtoCtor));

  @override
  _$CreateMockUserDtoCtor get _value => super._value as _$CreateMockUserDtoCtor;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$CreateMockUserDtoCtor(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_$CreateMockUserDtoCtor implements _$CreateMockUserDtoCtor {
  const _$_$CreateMockUserDtoCtor(
      {required this.displayName, required this.email, required this.password});

  factory _$_$CreateMockUserDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreateMockUserDtoCtorFromJson(json);

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateMockUserDto(displayName: $displayName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateMockUserDtoCtor &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$$CreateMockUserDtoCtorCopyWith<_$CreateMockUserDtoCtor> get copyWith =>
      __$$CreateMockUserDtoCtorCopyWithImpl<_$CreateMockUserDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateMockUserDtoCtorToJson(this);
  }
}

abstract class _$CreateMockUserDtoCtor implements CreateMockUserDto {
  const factory _$CreateMockUserDtoCtor(
      {required String displayName,
      required String email,
      required String password}) = _$_$CreateMockUserDtoCtor;

  factory _$CreateMockUserDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateMockUserDtoCtor.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateMockUserDtoCtorCopyWith<_$CreateMockUserDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
