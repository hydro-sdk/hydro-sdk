// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidConfigEmitOptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidConfigEmitOptions _$SwidConfigEmitOptionsFromJson(
    Map<String, dynamic> json) {
  return _$SwidConfigEmitOptionsCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigEmitOptionsTearOff {
  const _$SwidConfigEmitOptionsTearOff();

  _$SwidConfigEmitOptionsCtor call(
      {required SwidConfigTsEmitOptions tsEmitOptions,
      required SwidConfigDartEmitOptions dartEmitOptions,
      required List<String> prefixPaths,
      required SwidConfigAllowList allowList,
      required SwidConfigDenyList denyList}) {
    return _$SwidConfigEmitOptionsCtor(
      tsEmitOptions: tsEmitOptions,
      dartEmitOptions: dartEmitOptions,
      prefixPaths: prefixPaths,
      allowList: allowList,
      denyList: denyList,
    );
  }

  SwidConfigEmitOptions fromJson(Map<String, Object> json) {
    return SwidConfigEmitOptions.fromJson(json);
  }
}

/// @nodoc
const $SwidConfigEmitOptions = _$SwidConfigEmitOptionsTearOff();

/// @nodoc
mixin _$SwidConfigEmitOptions {
  SwidConfigTsEmitOptions get tsEmitOptions =>
      throw _privateConstructorUsedError;
  SwidConfigDartEmitOptions get dartEmitOptions =>
      throw _privateConstructorUsedError;
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  SwidConfigAllowList get allowList => throw _privateConstructorUsedError;
  SwidConfigDenyList get denyList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidConfigEmitOptionsCopyWith<SwidConfigEmitOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidConfigEmitOptionsCopyWith<$Res> {
  factory $SwidConfigEmitOptionsCopyWith(SwidConfigEmitOptions value,
          $Res Function(SwidConfigEmitOptions) then) =
      _$SwidConfigEmitOptionsCopyWithImpl<$Res>;
  $Res call(
      {SwidConfigTsEmitOptions tsEmitOptions,
      SwidConfigDartEmitOptions dartEmitOptions,
      List<String> prefixPaths,
      SwidConfigAllowList allowList,
      SwidConfigDenyList denyList});

  $SwidConfigTsEmitOptionsCopyWith<$Res> get tsEmitOptions;
  $SwidConfigDartEmitOptionsCopyWith<$Res> get dartEmitOptions;
  $SwidConfigAllowListCopyWith<$Res> get allowList;
  $SwidConfigDenyListCopyWith<$Res> get denyList;
}

/// @nodoc
class _$SwidConfigEmitOptionsCopyWithImpl<$Res>
    implements $SwidConfigEmitOptionsCopyWith<$Res> {
  _$SwidConfigEmitOptionsCopyWithImpl(this._value, this._then);

  final SwidConfigEmitOptions _value;
  // ignore: unused_field
  final $Res Function(SwidConfigEmitOptions) _then;

  @override
  $Res call({
    Object? tsEmitOptions = freezed,
    Object? dartEmitOptions = freezed,
    Object? prefixPaths = freezed,
    Object? allowList = freezed,
    Object? denyList = freezed,
  }) {
    return _then(_value.copyWith(
      tsEmitOptions: tsEmitOptions == freezed
          ? _value.tsEmitOptions
          : tsEmitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigTsEmitOptions,
      dartEmitOptions: dartEmitOptions == freezed
          ? _value.dartEmitOptions
          : dartEmitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigDartEmitOptions,
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allowList: allowList == freezed
          ? _value.allowList
          : allowList // ignore: cast_nullable_to_non_nullable
              as SwidConfigAllowList,
      denyList: denyList == freezed
          ? _value.denyList
          : denyList // ignore: cast_nullable_to_non_nullable
              as SwidConfigDenyList,
    ));
  }

  @override
  $SwidConfigTsEmitOptionsCopyWith<$Res> get tsEmitOptions {
    return $SwidConfigTsEmitOptionsCopyWith<$Res>(_value.tsEmitOptions,
        (value) {
      return _then(_value.copyWith(tsEmitOptions: value));
    });
  }

  @override
  $SwidConfigDartEmitOptionsCopyWith<$Res> get dartEmitOptions {
    return $SwidConfigDartEmitOptionsCopyWith<$Res>(_value.dartEmitOptions,
        (value) {
      return _then(_value.copyWith(dartEmitOptions: value));
    });
  }

  @override
  $SwidConfigAllowListCopyWith<$Res> get allowList {
    return $SwidConfigAllowListCopyWith<$Res>(_value.allowList, (value) {
      return _then(_value.copyWith(allowList: value));
    });
  }

  @override
  $SwidConfigDenyListCopyWith<$Res> get denyList {
    return $SwidConfigDenyListCopyWith<$Res>(_value.denyList, (value) {
      return _then(_value.copyWith(denyList: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidConfigEmitOptionsCtorCopyWith<$Res>
    implements $SwidConfigEmitOptionsCopyWith<$Res> {
  factory _$$SwidConfigEmitOptionsCtorCopyWith(
          _$SwidConfigEmitOptionsCtor value,
          $Res Function(_$SwidConfigEmitOptionsCtor) then) =
      __$$SwidConfigEmitOptionsCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {SwidConfigTsEmitOptions tsEmitOptions,
      SwidConfigDartEmitOptions dartEmitOptions,
      List<String> prefixPaths,
      SwidConfigAllowList allowList,
      SwidConfigDenyList denyList});

  @override
  $SwidConfigTsEmitOptionsCopyWith<$Res> get tsEmitOptions;
  @override
  $SwidConfigDartEmitOptionsCopyWith<$Res> get dartEmitOptions;
  @override
  $SwidConfigAllowListCopyWith<$Res> get allowList;
  @override
  $SwidConfigDenyListCopyWith<$Res> get denyList;
}

/// @nodoc
class __$$SwidConfigEmitOptionsCtorCopyWithImpl<$Res>
    extends _$SwidConfigEmitOptionsCopyWithImpl<$Res>
    implements _$$SwidConfigEmitOptionsCtorCopyWith<$Res> {
  __$$SwidConfigEmitOptionsCtorCopyWithImpl(_$SwidConfigEmitOptionsCtor _value,
      $Res Function(_$SwidConfigEmitOptionsCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigEmitOptionsCtor));

  @override
  _$SwidConfigEmitOptionsCtor get _value =>
      super._value as _$SwidConfigEmitOptionsCtor;

  @override
  $Res call({
    Object? tsEmitOptions = freezed,
    Object? dartEmitOptions = freezed,
    Object? prefixPaths = freezed,
    Object? allowList = freezed,
    Object? denyList = freezed,
  }) {
    return _then(_$SwidConfigEmitOptionsCtor(
      tsEmitOptions: tsEmitOptions == freezed
          ? _value.tsEmitOptions
          : tsEmitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigTsEmitOptions,
      dartEmitOptions: dartEmitOptions == freezed
          ? _value.dartEmitOptions
          : dartEmitOptions // ignore: cast_nullable_to_non_nullable
              as SwidConfigDartEmitOptions,
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allowList: allowList == freezed
          ? _value.allowList
          : allowList // ignore: cast_nullable_to_non_nullable
              as SwidConfigAllowList,
      denyList: denyList == freezed
          ? _value.denyList
          : denyList // ignore: cast_nullable_to_non_nullable
              as SwidConfigDenyList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidConfigEmitOptionsCtor implements _$SwidConfigEmitOptionsCtor {
  const _$_$SwidConfigEmitOptionsCtor(
      {required this.tsEmitOptions,
      required this.dartEmitOptions,
      required this.prefixPaths,
      required this.allowList,
      required this.denyList});

  factory _$_$SwidConfigEmitOptionsCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigEmitOptionsCtorFromJson(json);

  @override
  final SwidConfigTsEmitOptions tsEmitOptions;
  @override
  final SwidConfigDartEmitOptions dartEmitOptions;
  @override
  final List<String> prefixPaths;
  @override
  final SwidConfigAllowList allowList;
  @override
  final SwidConfigDenyList denyList;

  @override
  String toString() {
    return 'SwidConfigEmitOptions(tsEmitOptions: $tsEmitOptions, dartEmitOptions: $dartEmitOptions, prefixPaths: $prefixPaths, allowList: $allowList, denyList: $denyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigEmitOptionsCtor &&
            (identical(other.tsEmitOptions, tsEmitOptions) ||
                const DeepCollectionEquality()
                    .equals(other.tsEmitOptions, tsEmitOptions)) &&
            (identical(other.dartEmitOptions, dartEmitOptions) ||
                const DeepCollectionEquality()
                    .equals(other.dartEmitOptions, dartEmitOptions)) &&
            (identical(other.prefixPaths, prefixPaths) ||
                const DeepCollectionEquality()
                    .equals(other.prefixPaths, prefixPaths)) &&
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
      const DeepCollectionEquality().hash(tsEmitOptions) ^
      const DeepCollectionEquality().hash(dartEmitOptions) ^
      const DeepCollectionEquality().hash(prefixPaths) ^
      const DeepCollectionEquality().hash(allowList) ^
      const DeepCollectionEquality().hash(denyList);

  @JsonKey(ignore: true)
  @override
  _$$SwidConfigEmitOptionsCtorCopyWith<_$SwidConfigEmitOptionsCtor>
      get copyWith => __$$SwidConfigEmitOptionsCtorCopyWithImpl<
          _$SwidConfigEmitOptionsCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigEmitOptionsCtorToJson(this);
  }
}

abstract class _$SwidConfigEmitOptionsCtor implements SwidConfigEmitOptions {
  const factory _$SwidConfigEmitOptionsCtor(
      {required SwidConfigTsEmitOptions tsEmitOptions,
      required SwidConfigDartEmitOptions dartEmitOptions,
      required List<String> prefixPaths,
      required SwidConfigAllowList allowList,
      required SwidConfigDenyList denyList}) = _$_$SwidConfigEmitOptionsCtor;

  factory _$SwidConfigEmitOptionsCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigEmitOptionsCtor.fromJson;

  @override
  SwidConfigTsEmitOptions get tsEmitOptions =>
      throw _privateConstructorUsedError;
  @override
  SwidConfigDartEmitOptions get dartEmitOptions =>
      throw _privateConstructorUsedError;
  @override
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  @override
  SwidConfigAllowList get allowList => throw _privateConstructorUsedError;
  @override
  SwidConfigDenyList get denyList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigEmitOptionsCtorCopyWith<_$SwidConfigEmitOptionsCtor>
      get copyWith => throw _privateConstructorUsedError;
}
