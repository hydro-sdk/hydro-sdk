// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidConfig.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidConfig _$SwidConfigFromJson(Map<String, dynamic> json) {
  return _$SwidConfigCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigTearOff {
  const _$SwidConfigTearOff();

// ignore: unused_element
  _$SwidConfigCtor call(
      {@required SwidConfigAllowList allowList,
      @required SwidConfigDenyList denyList}) {
    return _$SwidConfigCtor(
      allowList: allowList,
      denyList: denyList,
    );
  }

// ignore: unused_element
  SwidConfig fromJson(Map<String, Object> json) {
    return SwidConfig.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidConfig = _$SwidConfigTearOff();

/// @nodoc
mixin _$SwidConfig {
  SwidConfigAllowList get allowList;
  SwidConfigDenyList get denyList;

  Map<String, dynamic> toJson();
  $SwidConfigCopyWith<SwidConfig> get copyWith;
}

/// @nodoc
abstract class $SwidConfigCopyWith<$Res> {
  factory $SwidConfigCopyWith(
          SwidConfig value, $Res Function(SwidConfig) then) =
      _$SwidConfigCopyWithImpl<$Res>;
  $Res call({SwidConfigAllowList allowList, SwidConfigDenyList denyList});

  $SwidConfigAllowListCopyWith<$Res> get allowList;
  $SwidConfigDenyListCopyWith<$Res> get denyList;
}

/// @nodoc
class _$SwidConfigCopyWithImpl<$Res> implements $SwidConfigCopyWith<$Res> {
  _$SwidConfigCopyWithImpl(this._value, this._then);

  final SwidConfig _value;
  // ignore: unused_field
  final $Res Function(SwidConfig) _then;

  @override
  $Res call({
    Object allowList = freezed,
    Object denyList = freezed,
  }) {
    return _then(_value.copyWith(
      allowList: allowList == freezed
          ? _value.allowList
          : allowList as SwidConfigAllowList,
      denyList: denyList == freezed
          ? _value.denyList
          : denyList as SwidConfigDenyList,
    ));
  }

  @override
  $SwidConfigAllowListCopyWith<$Res> get allowList {
    if (_value.allowList == null) {
      return null;
    }
    return $SwidConfigAllowListCopyWith<$Res>(_value.allowList, (value) {
      return _then(_value.copyWith(allowList: value));
    });
  }

  @override
  $SwidConfigDenyListCopyWith<$Res> get denyList {
    if (_value.denyList == null) {
      return null;
    }
    return $SwidConfigDenyListCopyWith<$Res>(_value.denyList, (value) {
      return _then(_value.copyWith(denyList: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidConfigCtorCopyWith<$Res>
    implements $SwidConfigCopyWith<$Res> {
  factory _$$SwidConfigCtorCopyWith(
          _$SwidConfigCtor value, $Res Function(_$SwidConfigCtor) then) =
      __$$SwidConfigCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidConfigAllowList allowList, SwidConfigDenyList denyList});

  @override
  $SwidConfigAllowListCopyWith<$Res> get allowList;
  @override
  $SwidConfigDenyListCopyWith<$Res> get denyList;
}

/// @nodoc
class __$$SwidConfigCtorCopyWithImpl<$Res>
    extends _$SwidConfigCopyWithImpl<$Res>
    implements _$$SwidConfigCtorCopyWith<$Res> {
  __$$SwidConfigCtorCopyWithImpl(
      _$SwidConfigCtor _value, $Res Function(_$SwidConfigCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigCtor));

  @override
  _$SwidConfigCtor get _value => super._value as _$SwidConfigCtor;

  @override
  $Res call({
    Object allowList = freezed,
    Object denyList = freezed,
  }) {
    return _then(_$SwidConfigCtor(
      allowList: allowList == freezed
          ? _value.allowList
          : allowList as SwidConfigAllowList,
      denyList: denyList == freezed
          ? _value.denyList
          : denyList as SwidConfigDenyList,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidConfigCtor implements _$SwidConfigCtor {
  const _$_$SwidConfigCtor({@required this.allowList, @required this.denyList})
      : assert(allowList != null),
        assert(denyList != null);

  factory _$_$SwidConfigCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigCtorFromJson(json);

  @override
  final SwidConfigAllowList allowList;
  @override
  final SwidConfigDenyList denyList;

  @override
  String toString() {
    return 'SwidConfig(allowList: $allowList, denyList: $denyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigCtor &&
            (identical(other.allowList, allowList) ||
                const DeepCollectionEquality()
                    .equals(other.allowList, allowList)) &&
            (identical(other.denyList, denyList) ||
                const DeepCollectionEquality()
                    .equals(other.denyList, denyList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allowList) ^
      const DeepCollectionEquality().hash(denyList);

  @override
  _$$SwidConfigCtorCopyWith<_$SwidConfigCtor> get copyWith =>
      __$$SwidConfigCtorCopyWithImpl<_$SwidConfigCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigCtorToJson(this);
  }
}

abstract class _$SwidConfigCtor implements SwidConfig {
  const factory _$SwidConfigCtor(
      {@required SwidConfigAllowList allowList,
      @required SwidConfigDenyList denyList}) = _$_$SwidConfigCtor;

  factory _$SwidConfigCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigCtor.fromJson;

  @override
  SwidConfigAllowList get allowList;
  @override
  SwidConfigDenyList get denyList;
  @override
  _$$SwidConfigCtorCopyWith<_$SwidConfigCtor> get copyWith;
}
