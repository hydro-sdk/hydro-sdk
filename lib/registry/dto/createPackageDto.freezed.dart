// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createPackageDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreatePackageDto _$CreatePackageDtoFromJson(Map<String, dynamic> json) {
  return _$CreatePackageDtoCtor.fromJson(json);
}

/// @nodoc
class _$CreatePackageDtoTearOff {
  const _$CreatePackageDtoTearOff();

// ignore: unused_element
  _$CreatePackageDtoCtor call(
      {@required String publishingPrivateKeySha256,
      @required String otaPackageBase64,
      @required String componentName,
      @required String displayVersion,
      @required String description,
      @required String readmeMd,
      @required String pubspecYaml,
      @required String pubspecLock,
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

// ignore: unused_element
  CreatePackageDto fromJson(Map<String, Object> json) {
    return CreatePackageDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CreatePackageDto = _$CreatePackageDtoTearOff();

/// @nodoc
mixin _$CreatePackageDto {
  String get publishingPrivateKeySha256;
  String get otaPackageBase64;
  String get componentName;
  String get displayVersion;
  String get description;
  String get readmeMd;
  String get pubspecYaml;
  String get pubspecLock;
  String get releaseChannelName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CreatePackageDtoCopyWith<CreatePackageDto> get copyWith;
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
    Object publishingPrivateKeySha256 = freezed,
    Object otaPackageBase64 = freezed,
    Object componentName = freezed,
    Object displayVersion = freezed,
    Object description = freezed,
    Object readmeMd = freezed,
    Object pubspecYaml = freezed,
    Object pubspecLock = freezed,
    Object releaseChannelName = freezed,
  }) {
    return _then(_value.copyWith(
      publishingPrivateKeySha256: publishingPrivateKeySha256 == freezed
          ? _value.publishingPrivateKeySha256
          : publishingPrivateKeySha256 as String,
      otaPackageBase64: otaPackageBase64 == freezed
          ? _value.otaPackageBase64
          : otaPackageBase64 as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName as String,
      displayVersion: displayVersion == freezed
          ? _value.displayVersion
          : displayVersion as String,
      description:
          description == freezed ? _value.description : description as String,
      readmeMd: readmeMd == freezed ? _value.readmeMd : readmeMd as String,
      pubspecYaml:
          pubspecYaml == freezed ? _value.pubspecYaml : pubspecYaml as String,
      pubspecLock:
          pubspecLock == freezed ? _value.pubspecLock : pubspecLock as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName as String,
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
    Object publishingPrivateKeySha256 = freezed,
    Object otaPackageBase64 = freezed,
    Object componentName = freezed,
    Object displayVersion = freezed,
    Object description = freezed,
    Object readmeMd = freezed,
    Object pubspecYaml = freezed,
    Object pubspecLock = freezed,
    Object releaseChannelName = freezed,
  }) {
    return _then(_$CreatePackageDtoCtor(
      publishingPrivateKeySha256: publishingPrivateKeySha256 == freezed
          ? _value.publishingPrivateKeySha256
          : publishingPrivateKeySha256 as String,
      otaPackageBase64: otaPackageBase64 == freezed
          ? _value.otaPackageBase64
          : otaPackageBase64 as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName as String,
      displayVersion: displayVersion == freezed
          ? _value.displayVersion
          : displayVersion as String,
      description:
          description == freezed ? _value.description : description as String,
      readmeMd: readmeMd == freezed ? _value.readmeMd : readmeMd as String,
      pubspecYaml:
          pubspecYaml == freezed ? _value.pubspecYaml : pubspecYaml as String,
      pubspecLock:
          pubspecLock == freezed ? _value.pubspecLock : pubspecLock as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$CreatePackageDtoCtor implements _$CreatePackageDtoCtor {
  const _$_$CreatePackageDtoCtor(
      {@required this.publishingPrivateKeySha256,
      @required this.otaPackageBase64,
      @required this.componentName,
      @required this.displayVersion,
      @required this.description,
      @required this.readmeMd,
      @required this.pubspecYaml,
      @required this.pubspecLock,
      this.releaseChannelName = "latest"})
      : assert(publishingPrivateKeySha256 != null),
        assert(otaPackageBase64 != null),
        assert(componentName != null),
        assert(displayVersion != null),
        assert(description != null),
        assert(readmeMd != null),
        assert(pubspecYaml != null),
        assert(pubspecLock != null),
        assert(releaseChannelName != null);

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
      {@required String publishingPrivateKeySha256,
      @required String otaPackageBase64,
      @required String componentName,
      @required String displayVersion,
      @required String description,
      @required String readmeMd,
      @required String pubspecYaml,
      @required String pubspecLock,
      String releaseChannelName}) = _$_$CreatePackageDtoCtor;

  factory _$CreatePackageDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$CreatePackageDtoCtor.fromJson;

  @override
  String get publishingPrivateKeySha256;
  @override
  String get otaPackageBase64;
  @override
  String get componentName;
  @override
  String get displayVersion;
  @override
  String get description;
  @override
  String get readmeMd;
  @override
  String get pubspecYaml;
  @override
  String get pubspecLock;
  @override
  String get releaseChannelName;
  @override
  @JsonKey(ignore: true)
  _$$CreatePackageDtoCtorCopyWith<_$CreatePackageDtoCtor> get copyWith;
}
