// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidConfigDenyList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidConfigDenyList _$SwidConfigDenyListFromJson(Map<String, dynamic> json) {
  return _$SwidConfigDenyListCtor.fromJson(json);
}

/// @nodoc
class _$SwidConfigDenyListTearOff {
  const _$SwidConfigDenyListTearOff();

// ignore: unused_element
  _$SwidConfigDenyListCtor call(
      {required List<String> classNames,
      required List<String> packagePaths}) {
    return _$SwidConfigDenyListCtor(
      classNames: classNames,
      packagePaths: packagePaths,
    );
  }

// ignore: unused_element
  SwidConfigDenyList fromJson(Map<String, Object> json) {
    return SwidConfigDenyList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidConfigDenyList = _$SwidConfigDenyListTearOff();

/// @nodoc
mixin _$SwidConfigDenyList {
  List<String> get classNames;
  List<String> get packagePaths;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidConfigDenyListCopyWith<SwidConfigDenyList> get copyWith;
}

/// @nodoc
abstract class $SwidConfigDenyListCopyWith<$Res> {
  factory $SwidConfigDenyListCopyWith(
          SwidConfigDenyList value, $Res Function(SwidConfigDenyList) then) =
      _$SwidConfigDenyListCopyWithImpl<$Res>;
  $Res call({List<String>? classNames, List<String>? packagePaths});
}

/// @nodoc
class _$SwidConfigDenyListCopyWithImpl<$Res>
    implements $SwidConfigDenyListCopyWith<$Res> {
  _$SwidConfigDenyListCopyWithImpl(this._value, this._then);

  final SwidConfigDenyList _value;
  // ignore: unused_field
  final $Res Function(SwidConfigDenyList?) _then;

  @override
  $Res call({
    Object? classNames = freezed,
    Object? packagePaths = freezed,
  }) {
    return _then(_value.copyWith(
      classNames: classNames == freezed
          ? _value.classNames
          : classNames as List<String>?,
      packagePaths: packagePaths == freezed
          ? _value.packagePaths
          : packagePaths as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$SwidConfigDenyListCtorCopyWith<$Res>
    implements $SwidConfigDenyListCopyWith<$Res> {
  factory _$$SwidConfigDenyListCtorCopyWith(_$SwidConfigDenyListCtor value,
          $Res Function(_$SwidConfigDenyListCtor) then) =
      __$$SwidConfigDenyListCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? classNames, List<String>? packagePaths});
}

/// @nodoc
class __$$SwidConfigDenyListCtorCopyWithImpl<$Res>
    extends _$SwidConfigDenyListCopyWithImpl<$Res>
    implements _$$SwidConfigDenyListCtorCopyWith<$Res> {
  __$$SwidConfigDenyListCtorCopyWithImpl(_$SwidConfigDenyListCtor _value,
      $Res Function(_$SwidConfigDenyListCtor) _then)
      : super(_value, (v) => _then(v as _$SwidConfigDenyListCtor));

  @override
  _$SwidConfigDenyListCtor get _value =>
      super._value as _$SwidConfigDenyListCtor;

  @override
  $Res call({
    Object? classNames = freezed,
    Object? packagePaths = freezed,
  }) {
    return _then(_$SwidConfigDenyListCtor(
      classNames: classNames == freezed
          ? _value.classNames
          : (classNames as List<String>?)!,
      packagePaths: packagePaths == freezed
          ? _value.packagePaths
          : (packagePaths as List<String>?)!,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidConfigDenyListCtor implements _$SwidConfigDenyListCtor {
  const _$_$SwidConfigDenyListCtor(
      {required this.classNames, required this.packagePaths})
      : assert(classNames != null),
        assert(packagePaths != null);

  factory _$_$SwidConfigDenyListCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidConfigDenyListCtorFromJson(json);

  @override
  final List<String> classNames;
  @override
  final List<String> packagePaths;

  @override
  String toString() {
    return 'SwidConfigDenyList(classNames: $classNames, packagePaths: $packagePaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidConfigDenyListCtor &&
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
  _$$SwidConfigDenyListCtorCopyWith<_$SwidConfigDenyListCtor> get copyWith =>
      __$$SwidConfigDenyListCtorCopyWithImpl<_$SwidConfigDenyListCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidConfigDenyListCtorToJson(this);
  }
}

abstract class _$SwidConfigDenyListCtor implements SwidConfigDenyList {
  const factory _$SwidConfigDenyListCtor(
      {required List<String> classNames,
      required List<String> packagePaths}) = _$_$SwidConfigDenyListCtor;

  factory _$SwidConfigDenyListCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidConfigDenyListCtor.fromJson;

  @override
  List<String> get classNames;
  @override
  List<String> get packagePaths;
  @override
  @JsonKey(ignore: true)
  _$$SwidConfigDenyListCtorCopyWith<_$SwidConfigDenyListCtor> get copyWith;
}
