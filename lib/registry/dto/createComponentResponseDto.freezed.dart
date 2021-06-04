// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createComponentResponseDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreateComponentResponseDto _$CreateComponentResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _$CreateComponentResponseDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreateComponentResponseDtoTearOff {
  const _$CreateComponentResponseDtoTearOff();

// ignore: unused_element
  _$CreateComponentResponseDtoCtor call(
      {required String name,
      required String description,
      required String publishingPrivateKey}) {
    return _$CreateComponentResponseDtoCtor(
      name: name,
      description: description,
      publishingPrivateKey: publishingPrivateKey,
    );
  }

// ignore: unused_element
  CreateComponentResponseDto fromJson(Map<String, Object> json) {
    return CreateComponentResponseDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreateComponentResponseDto = _$CreateComponentResponseDtoTearOff();

/// @nodoc
mixin _$CreateComponentResponseDto {
  String get name;
  String get description;
  String get publishingPrivateKey;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreateComponentResponseDtoCopyWith<CreateComponentResponseDto> get copyWith;
}

/// @nodoc
abstract class $CreateComponentResponseDtoCopyWith<$Res> {
  factory $CreateComponentResponseDtoCopyWith(CreateComponentResponseDto value,
          $Res Function(CreateComponentResponseDto) then) =
      _$CreateComponentResponseDtoCopyWithImpl<$Res>;
  $Res call({String? name, String? description, String? publishingPrivateKey});
}

/// @nodoc
class _$CreateComponentResponseDtoCopyWithImpl<$Res>
    implements $CreateComponentResponseDtoCopyWith<$Res> {
  _$CreateComponentResponseDtoCopyWithImpl(this._value, this._then);

  final CreateComponentResponseDto _value;
  // ignore: unused_field
  final $Res Function(CreateComponentResponseDto?) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? publishingPrivateKey = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String?,
      description:
          description == freezed ? _value.description : description as String?,
      publishingPrivateKey: publishingPrivateKey == freezed
          ? _value.publishingPrivateKey
          : publishingPrivateKey as String?,
    ));
  }
}

/// @nodoc
abstract class _$$CreateComponentResponseDtoCtorCopyWith<$Res>
    implements $CreateComponentResponseDtoCopyWith<$Res> {
  factory _$$CreateComponentResponseDtoCtorCopyWith(
          _$CreateComponentResponseDtoCtor value,
          $Res Function(_$CreateComponentResponseDtoCtor) then) =
      __$$CreateComponentResponseDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? description, String? publishingPrivateKey});
}

/// @nodoc
class __$$CreateComponentResponseDtoCtorCopyWithImpl<$Res>
    extends _$CreateComponentResponseDtoCopyWithImpl<$Res>
    implements _$$CreateComponentResponseDtoCtorCopyWith<$Res> {
  __$$CreateComponentResponseDtoCtorCopyWithImpl(
      _$CreateComponentResponseDtoCtor _value,
      $Res Function(_$CreateComponentResponseDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreateComponentResponseDtoCtor));

  @override
  _$CreateComponentResponseDtoCtor get _value =>
      super._value as _$CreateComponentResponseDtoCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? publishingPrivateKey = freezed,
  }) {
    return _then(_$CreateComponentResponseDtoCtor(
      name: name == freezed ? _value.name : (name as String?)!,
      description:
          description == freezed ? _value.description : (description as String?)!,
      publishingPrivateKey: publishingPrivateKey == freezed
          ? _value.publishingPrivateKey
          : (publishingPrivateKey as String?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$CreateComponentResponseDtoCtor
    implements _$CreateComponentResponseDtoCtor {
  const _$_$CreateComponentResponseDtoCtor(
      {required this.name,
      required this.description,
      required this.publishingPrivateKey})
      : assert(name != null),
        assert(description != null),
        assert(publishingPrivateKey != null);

  factory _$_$CreateComponentResponseDtoCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$CreateComponentResponseDtoCtorFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String publishingPrivateKey;

  @override
  String toString() {
    return 'CreateComponentResponseDto(name: $name, description: $description, publishingPrivateKey: $publishingPrivateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreateComponentResponseDtoCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.publishingPrivateKey, publishingPrivateKey) ||
                const DeepCollectionEquality()
                    .equals(other.publishingPrivateKey, publishingPrivateKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(publishingPrivateKey);

  @JsonKey(ignore: true)
  @override
  _$$CreateComponentResponseDtoCtorCopyWith<_$CreateComponentResponseDtoCtor>
      get copyWith => __$$CreateComponentResponseDtoCtorCopyWithImpl<
          _$CreateComponentResponseDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreateComponentResponseDtoCtorToJson(this);
  }
}

abstract class _$CreateComponentResponseDtoCtor
    implements CreateComponentResponseDto {
  const factory _$CreateComponentResponseDtoCtor(
          {required String name,
          required String description,
          required String publishingPrivateKey}) =
      _$_$CreateComponentResponseDtoCtor;

  factory _$CreateComponentResponseDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreateComponentResponseDtoCtor.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get publishingPrivateKey;
  @override
  @JsonKey(ignore: true)
  _$$CreateComponentResponseDtoCtorCopyWith<_$CreateComponentResponseDtoCtor>
      get copyWith;
}
