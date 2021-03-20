// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidConfigAllowList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidConfigAllowList _$SwidConfigAllowListFromJson(Map<String, dynamic> json) {
  return _$SwidConfigAllowListCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigAllowListTearOff {
  const _$SwidConfigAllowListTearOff();

// ignore: unused_element
  _$SwidConfigAllowListCtor call(
      {@required List<String> classNames,
      @required List<String> packagePaths}) {
    return _$SwidConfigAllowListCtor(
      classNames: classNames,
      packagePaths: packagePaths,
    );
  }

// ignore: unused_element
  SwidConfigAllowList fromJson(Map<String, Object> json) {
    return SwidConfigAllowList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidConfigAllowList = _$SwidConfigAllowListTearOff();

/// @nodoc
mixin _$SwidConfigAllowList {
  List<String> get classNames;
  List<String> get packagePaths;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidConfigAllowListCopyWith<SwidConfigAllowList> get copyWith;
}

/// @nodoc
abstract class $SwidConfigAllowListCopyWith<$Res> {
  factory $SwidConfigAllowListCopyWith(
          SwidConfigAllowList value, $Res Function(SwidConfigAllowList) then) =
      _$SwidConfigAllowListCopyWithImpl<$Res>;
  $Res call({List<String> classNames, List<String> packagePaths});
}

/// @nodoc
class _$SwidConfigAllowListCopyWithImpl<$Res>
    implements $SwidConfigAllowListCopyWith<$Res> {
  _$SwidConfigAllowListCopyWithImpl(this._value, this._then);

  final SwidConfigAllowList _value;
  // ignore: unused_field
  final $Res Function(SwidConfigAllowList) _then;

  @override
  $Res call({
    Object classNames = freezed,
    Object packagePaths = freezed,
  }) {
    return _then(_value.copyWith(
      classNames: classNames == freezed
          ? _value.classNames
          : classNames as List<String>,
      packagePaths: packagePaths == freezed
          ? _value.packagePaths
          : packagePaths as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidConfigAllowListCtorCopyWith<$Res>
    implements $SwidConfigAllowListCopyWith<$Res> {
  factory _$$SwidConfigAllowListCtorCopyWith(_$SwidConfigAllowListCtor value,
          $Res Function(_$SwidConfigAllowListCtor) then) =
      __$$SwidConfigAllowListCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<String> classNames, List<String> packagePaths});
}

/// @nodoc
class __$$SwidConfigAllowListCtorCopyWithImpl<$Res>
    extends _$SwidConfigAllowListCopyWithImpl<$Res>
    implements _$$SwidConfigAllowListCtorCopyWith<$Res> {
  __$$SwidConfigAllowListCtorCopyWithImpl(_$SwidConfigAllowListCtor _value,
      $Res Function(_$SwidConfigAllowListCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigAllowListCtor));

  @override
  _$SwidConfigAllowListCtor get _value =>
      super._value as _$SwidConfigAllowListCtor;

  @override
  $Res call({
    Object classNames = freezed,
    Object packagePaths = freezed,
  }) {
    return _then(_$SwidConfigAllowListCtor(
      classNames: classNames == freezed
          ? _value.classNames
          : classNames as List<String>,
      packagePaths: packagePaths == freezed
          ? _value.packagePaths
          : packagePaths as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidConfigAllowListCtor implements _$SwidConfigAllowListCtor {
  const _$_$SwidConfigAllowListCtor(
      {@required this.classNames, @required this.packagePaths})
      : assert(classNames != null),
        assert(packagePaths != null);

  factory _$_$SwidConfigAllowListCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigAllowListCtorFromJson(json);

  @override
  final List<String> classNames;
  @override
  final List<String> packagePaths;

  @override
  String toString() {
    return 'SwidConfigAllowList(classNames: $classNames, packagePaths: $packagePaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigAllowListCtor &&
            (identical(other.classNames, classNames) ||
                const DeepCollectionEquality()
                    .equals(other.classNames, classNames)) &&
            (identical(other.packagePaths, packagePaths) ||
                const DeepCollectionEquality()
                    .equals(other.packagePaths, packagePaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(classNames) ^
      const DeepCollectionEquality().hash(packagePaths);

  @JsonKey(ignore: true)
  @override
  _$$SwidConfigAllowListCtorCopyWith<_$SwidConfigAllowListCtor> get copyWith =>
      __$$SwidConfigAllowListCtorCopyWithImpl<_$SwidConfigAllowListCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigAllowListCtorToJson(this);
  }
}

abstract class _$SwidConfigAllowListCtor implements SwidConfigAllowList {
  const factory _$SwidConfigAllowListCtor(
      {@required List<String> classNames,
      @required List<String> packagePaths}) = _$_$SwidConfigAllowListCtor;

  factory _$SwidConfigAllowListCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigAllowListCtor.fromJson;

  @override
  List<String> get classNames;
  @override
  List<String> get packagePaths;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigAllowListCtorCopyWith<_$SwidConfigAllowListCtor> get copyWith;
}
