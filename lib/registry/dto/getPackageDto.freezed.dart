// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'getPackageDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GetPackageDto _$GetPackageDtoFromJson(Map<String, dynamic> json) {
  return _$GetPackageDtoCtor.fromJson(json);
}

/// @nodoc
class _$GetPackageDtoTearOff {
  const _$GetPackageDtoTearOff();

// ignore: unused_element
  _$GetPackageDtoCtor call(
      {@required String sessionId,
      @required String projectName,
      @required String componentName,
      @required String releaseChannelName,
      @required String currentPackageId}) {
    return _$GetPackageDtoCtor(
      sessionId: sessionId,
      projectName: projectName,
      componentName: componentName,
      releaseChannelName: releaseChannelName,
      currentPackageId: currentPackageId,
    );
  }

// ignore: unused_element
  GetPackageDto fromJson(Map<String, Object> json) {
    return GetPackageDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GetPackageDto = _$GetPackageDtoTearOff();

/// @nodoc
mixin _$GetPackageDto {
  String get sessionId;
  String get projectName;
  String get componentName;
  String get releaseChannelName;
  String get currentPackageId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GetPackageDtoCopyWith<GetPackageDto> get copyWith;
}

/// @nodoc
abstract class $GetPackageDtoCopyWith<$Res> {
  factory $GetPackageDtoCopyWith(
          GetPackageDto value, $Res Function(GetPackageDto) then) =
      _$GetPackageDtoCopyWithImpl<$Res>;
  $Res call(
      {String sessionId,
      String projectName,
      String componentName,
      String releaseChannelName,
      String currentPackageId});
}

/// @nodoc
class _$GetPackageDtoCopyWithImpl<$Res>
    implements $GetPackageDtoCopyWith<$Res> {
  _$GetPackageDtoCopyWithImpl(this._value, this._then);

  final GetPackageDto _value;
  // ignore: unused_field
  final $Res Function(GetPackageDto) _then;

  @override
  $Res call({
    Object sessionId = freezed,
    Object projectName = freezed,
    Object componentName = freezed,
    Object releaseChannelName = freezed,
    Object currentPackageId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed ? _value.sessionId : sessionId as String,
      projectName:
          projectName == freezed ? _value.projectName : projectName as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName as String,
      currentPackageId: currentPackageId == freezed
          ? _value.currentPackageId
          : currentPackageId as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetPackageDtoCtorCopyWith<$Res>
    implements $GetPackageDtoCopyWith<$Res> {
  factory _$$GetPackageDtoCtorCopyWith(
          _$GetPackageDtoCtor value, $Res Function(_$GetPackageDtoCtor) then) =
      __$$GetPackageDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sessionId,
      String projectName,
      String componentName,
      String releaseChannelName,
      String currentPackageId});
}

/// @nodoc
class __$$GetPackageDtoCtorCopyWithImpl<$Res>
    extends _$GetPackageDtoCopyWithImpl<$Res>
    implements _$$GetPackageDtoCtorCopyWith<$Res> {
  __$$GetPackageDtoCtorCopyWithImpl(
      _$GetPackageDtoCtor _value, $Res Function(_$GetPackageDtoCtor) _then)
      : super(_value, (v) => _then(v as _$GetPackageDtoCtor));

  @override
  _$GetPackageDtoCtor get _value => super._value as _$GetPackageDtoCtor;

  @override
  $Res call({
    Object sessionId = freezed,
    Object projectName = freezed,
    Object componentName = freezed,
    Object releaseChannelName = freezed,
    Object currentPackageId = freezed,
  }) {
    return _then(_$GetPackageDtoCtor(
      sessionId: sessionId == freezed ? _value.sessionId : sessionId as String,
      projectName:
          projectName == freezed ? _value.projectName : projectName as String,
      componentName: componentName == freezed
          ? _value.componentName
          : componentName as String,
      releaseChannelName: releaseChannelName == freezed
          ? _value.releaseChannelName
          : releaseChannelName as String,
      currentPackageId: currentPackageId == freezed
          ? _value.currentPackageId
          : currentPackageId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$GetPackageDtoCtor implements _$GetPackageDtoCtor {
  const _$_$GetPackageDtoCtor(
      {@required this.sessionId,
      @required this.projectName,
      @required this.componentName,
      @required this.releaseChannelName,
      @required this.currentPackageId})
      : assert(sessionId != null),
        assert(projectName != null),
        assert(componentName != null),
        assert(releaseChannelName != null),
        assert(currentPackageId != null);

  factory _$_$GetPackageDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$GetPackageDtoCtorFromJson(json);

  @override
  final String sessionId;
  @override
  final String projectName;
  @override
  final String componentName;
  @override
  final String releaseChannelName;
  @override
  final String currentPackageId;

  @override
  String toString() {
    return 'GetPackageDto(sessionId: $sessionId, projectName: $projectName, componentName: $componentName, releaseChannelName: $releaseChannelName, currentPackageId: $currentPackageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$GetPackageDtoCtor &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.projectName, projectName) ||
                const DeepCollectionEquality()
                    .equals(other.projectName, projectName)) &&
            (identical(other.componentName, componentName) ||
                const DeepCollectionEquality()
                    .equals(other.componentName, componentName)) &&
            (identical(other.releaseChannelName, releaseChannelName) ||
                const DeepCollectionEquality()
                    .equals(other.releaseChannelName, releaseChannelName)) &&
            (identical(other.currentPackageId, currentPackageId) ||
                const DeepCollectionEquality()
                    .equals(other.currentPackageId, currentPackageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(projectName) ^
      const DeepCollectionEquality().hash(componentName) ^
      const DeepCollectionEquality().hash(releaseChannelName) ^
      const DeepCollectionEquality().hash(currentPackageId);

  @JsonKey(ignore: true)
  @override
  _$$GetPackageDtoCtorCopyWith<_$GetPackageDtoCtor> get copyWith =>
      __$$GetPackageDtoCtorCopyWithImpl<_$GetPackageDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$GetPackageDtoCtorToJson(this);
  }
}

abstract class _$GetPackageDtoCtor implements GetPackageDto {
  const factory _$GetPackageDtoCtor(
      {@required String sessionId,
      @required String projectName,
      @required String componentName,
      @required String releaseChannelName,
      @required String currentPackageId}) = _$_$GetPackageDtoCtor;

  factory _$GetPackageDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$GetPackageDtoCtor.fromJson;

  @override
  String get sessionId;
  @override
  String get projectName;
  @override
  String get componentName;
  @override
  String get releaseChannelName;
  @override
  String get currentPackageId;
  @override
  @JsonKey(ignore: true)
  _$$GetPackageDtoCtorCopyWith<_$GetPackageDtoCtor> get copyWith;
}
