// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'createPackageDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePackageDto _$CreatePackageDtoFromJson(Map<String, dynamic> json) {
  return _$CreatePackageDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreatePackageDtoTearOff {
  const _$CreatePackageDtoTearOff();

  _$CreatePackageDtoCtor call(
      {required String publishingPrivateKeySha256,
      required String otaPackageBase64,
      required String componentName,
      required String displayVersion,
      required String description,
      required String readmeMd,
      required String pubspecYaml,
      required String pubspecLock,
      String releaseChannelName = "latest"}) {
    return _$CreatePackageDtoCtor(
      publishingPrivateKeySha256: publishingPrivateKeySha256,
      otaPackageBase64: otaPackageBase64,
      componentName: componentName,
      displayVersion: displayVersion,
      description: description,
      readmeMd: readmeMd,
      pubspecYaml: pubspecYaml,
      pubspecLock: pubspecLock,
      releaseChannelName: releaseChannelName,
    );
  }

  CreatePackageDto fromJson(Map<String, Object> json) {
    return CreatePackageDto.fromJson(json);
  }
}

/// @nodoc
const $CreatePackageDto = _$CreatePackageDtoTearOff();

/// @nodoc
mixin _$CreatePackageDto {
  String get publishingPrivateKeySha256 => throw _privateConstructorUsedError;
  String get otaPackageBase64 => throw _privateConstructorUsedError;
  String get componentName => throw _privateConstructorUsedError;
  String get displayVersion => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get readmeMd => throw _privateConstructorUsedError;
  String get pubspecYaml => throw _privateConstructorUsedError;
  String get pubspecLock => throw _privateConstructorUsedError;
  String get releaseChannelName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePackageDtoCopyWith<CreatePackageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePackageDtoCopyWith<$Res> {
  factory $CreatePackageDtoCopyWith(
          CreatePackageDto value, $Res Function(CreatePackageDto) then) =
      _$CreatePackageDtoCopyWithImpl<$Res>;
  $Res call(
      {String publishingPrivateKeySha256,
      String otaPackageBase64,
      String componentName,
      String displayVersion,
      String description,
      String readmeMd,
      String pubspecYaml,
      String pubspecLock,
      String releaseChannelName});
}

/// @nodoc
class _$CreatePackageDtoCopyWithImpl<$Res>
    implements $CreatePackageDtoCopyWith<$Res> {
  _$CreatePackageDtoCopyWithImpl(this._value, this._then);

  final CreatePackageDto _value;
  // ignore: unused_field
  final $Res Function(CreatePackageDto) _then;

  @override
  $Res call({
    Object? publishingPrivateKeySha256 = freezed,
    Object? otaPackageBase64 = freezed,
    Object? componentName = freezed,
    Object? displayVersion = freezed,
    Object? description = freezed,
    Object? readmeMd = freezed,
    Object? pubspecYaml = freezed,
    Object? pubspecLock = freezed,
    Object? releaseChannelName = freezed,
  }) {
    return _then(_value.copyWith(
      publishingPrivateKeySha256: publishingPrivateKeySha256 == freezed
          ? _value.publishingPrivateKeySha256
          : publishingPrivateKeySha256 // ignore: cast_nullable_to_non_nullable
              as String,
      otaPackageBase64: otaPackageBase64 == freezed
          ? _value.otaPackageBase64
          : otaPackageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName // ignore: cast_nullable_to_non_nullable
              as String,
      displayVersion: displayVersion == freezed
          ? _value.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      readmeMd: readmeMd == freezed
          ? _value.readmeMd
          : readmeMd // ignore: cast_nullable_to_non_nullable
              as String,
      pubspecYaml: pubspecYaml == freezed
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String,
      pubspecLock: pubspecLock == freezed
          ? _value.pubspecLock
          : pubspecLock // ignore: cast_nullable_to_non_nullable
              as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$CreatePackageDtoCtorCopyWith<$Res>
    implements $CreatePackageDtoCopyWith<$Res> {
  factory _$$CreatePackageDtoCtorCopyWith(_$CreatePackageDtoCtor value,
          $Res Function(_$CreatePackageDtoCtor) then) =
      __$$CreatePackageDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String publishingPrivateKeySha256,
      String otaPackageBase64,
      String componentName,
      String displayVersion,
      String description,
      String readmeMd,
      String pubspecYaml,
      String pubspecLock,
      String releaseChannelName});
}

/// @nodoc
class __$$CreatePackageDtoCtorCopyWithImpl<$Res>
    extends _$CreatePackageDtoCopyWithImpl<$Res>
    implements _$$CreatePackageDtoCtorCopyWith<$Res> {
  __$$CreatePackageDtoCtorCopyWithImpl(_$CreatePackageDtoCtor _value,
      $Res Function(_$CreatePackageDtoCtor) _then)
      : super(_value, (v) => _then(v as _$CreatePackageDtoCtor));

  @override
  _$CreatePackageDtoCtor get _value => super._value as _$CreatePackageDtoCtor;

  @override
  $Res call({
    Object? publishingPrivateKeySha256 = freezed,
    Object? otaPackageBase64 = freezed,
    Object? componentName = freezed,
    Object? displayVersion = freezed,
    Object? description = freezed,
    Object? readmeMd = freezed,
    Object? pubspecYaml = freezed,
    Object? pubspecLock = freezed,
    Object? releaseChannelName = freezed,
  }) {
    return _then(_$CreatePackageDtoCtor(
      publishingPrivateKeySha256: publishingPrivateKeySha256 == freezed
          ? _value.publishingPrivateKeySha256
          : publishingPrivateKeySha256 // ignore: cast_nullable_to_non_nullable
              as String,
      otaPackageBase64: otaPackageBase64 == freezed
          ? _value.otaPackageBase64
          : otaPackageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName // ignore: cast_nullable_to_non_nullable
              as String,
      displayVersion: displayVersion == freezed
          ? _value.displayVersion
          : displayVersion // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      readmeMd: readmeMd == freezed
          ? _value.readmeMd
          : readmeMd // ignore: cast_nullable_to_non_nullable
              as String,
      pubspecYaml: pubspecYaml == freezed
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String,
      pubspecLock: pubspecLock == freezed
          ? _value.pubspecLock
          : pubspecLock // ignore: cast_nullable_to_non_nullable
              as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$CreatePackageDtoCtor implements _$CreatePackageDtoCtor {
  const _$_$CreatePackageDtoCtor(
      {required this.publishingPrivateKeySha256,
      required this.otaPackageBase64,
      required this.componentName,
      required this.displayVersion,
      required this.description,
      required this.readmeMd,
      required this.pubspecYaml,
      required this.pubspecLock,
      this.releaseChannelName = "latest"});

  factory _$_$CreatePackageDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$CreatePackageDtoCtorFromJson(json);

  @override
  final String publishingPrivateKeySha256;
  @override
  final String otaPackageBase64;
  @override
  final String componentName;
  @override
  final String displayVersion;
  @override
  final String description;
  @override
  final String readmeMd;
  @override
  final String pubspecYaml;
  @override
  final String pubspecLock;
  @JsonKey(defaultValue: "latest")
  @override
  final String releaseChannelName;

  @override
  String toString() {
    return 'CreatePackageDto(publishingPrivateKeySha256: $publishingPrivateKeySha256, otaPackageBase64: $otaPackageBase64, componentName: $componentName, displayVersion: $displayVersion, description: $description, readmeMd: $readmeMd, pubspecYaml: $pubspecYaml, pubspecLock: $pubspecLock, releaseChannelName: $releaseChannelName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$CreatePackageDtoCtor &&
            (identical(other.publishingPrivateKeySha256,
                    publishingPrivateKeySha256) ||
                const DeepCollectionEquality().equals(
                    other.publishingPrivateKeySha256,
                    publishingPrivateKeySha256)) &&
            (identical(other.otaPackageBase64, otaPackageBase64) ||
                const DeepCollectionEquality()
                    .equals(other.otaPackageBase64, otaPackageBase64)) &&
            (identical(other.componentName, componentName) ||
                const DeepCollectionEquality()
                    .equals(other.componentName, componentName)) &&
            (identical(other.displayVersion, displayVersion) ||
                const DeepCollectionEquality()
                    .equals(other.displayVersion, displayVersion)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.readmeMd, readmeMd) ||
                const DeepCollectionEquality()
                    .equals(other.readmeMd, readmeMd)) &&
            (identical(other.pubspecYaml, pubspecYaml) ||
                const DeepCollectionEquality()
                    .equals(other.pubspecYaml, pubspecYaml)) &&
            (identical(other.pubspecLock, pubspecLock) ||
                const DeepCollectionEquality()
                    .equals(other.pubspecLock, pubspecLock)) &&
            (identical(other.releaseChannelName, releaseChannelName) ||
                const DeepCollectionEquality()
                    .equals(other.releaseChannelName, releaseChannelName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(publishingPrivateKeySha256) ^
      const DeepCollectionEquality().hash(otaPackageBase64) ^
      const DeepCollectionEquality().hash(componentName) ^
      const DeepCollectionEquality().hash(displayVersion) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(readmeMd) ^
      const DeepCollectionEquality().hash(pubspecYaml) ^
      const DeepCollectionEquality().hash(pubspecLock) ^
      const DeepCollectionEquality().hash(releaseChannelName);

  @JsonKey(ignore: true)
  @override
  _$$CreatePackageDtoCtorCopyWith<_$CreatePackageDtoCtor> get copyWith =>
      __$$CreatePackageDtoCtorCopyWithImpl<_$CreatePackageDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$CreatePackageDtoCtorToJson(this);
  }
}

abstract class _$CreatePackageDtoCtor implements CreatePackageDto {
  const factory _$CreatePackageDtoCtor(
      {required String publishingPrivateKeySha256,
      required String otaPackageBase64,
      required String componentName,
      required String displayVersion,
      required String description,
      required String readmeMd,
      required String pubspecYaml,
      required String pubspecLock,
      String releaseChannelName}) = _$_$CreatePackageDtoCtor;

  factory _$CreatePackageDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageDtoCtor.fromJson;

  @override
  String get publishingPrivateKeySha256 => throw _privateConstructorUsedError;
  @override
  String get otaPackageBase64 => throw _privateConstructorUsedError;
  @override
  String get componentName => throw _privateConstructorUsedError;
  @override
  String get displayVersion => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get readmeMd => throw _privateConstructorUsedError;
  @override
  String get pubspecYaml => throw _privateConstructorUsedError;
  @override
  String get pubspecLock => throw _privateConstructorUsedError;
  @override
  String get releaseChannelName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreatePackageDtoCtorCopyWith<_$CreatePackageDtoCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
