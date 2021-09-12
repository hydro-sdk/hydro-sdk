// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidEnum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidEnum _$SwidEnumFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidEnumTearOff {
  const _$SwidEnumTearOff();

  _$Data call(
      {required String originalPackagePath,
      required String identifier,
      required List<String> children}) {
    return _$Data(
      originalPackagePath: originalPackagePath,
      identifier: identifier,
      children: children,
    );
  }

  SwidEnum fromJson(Map<String, Object> json) {
    return SwidEnum.fromJson(json);
  }
}

/// @nodoc
const $SwidEnum = _$SwidEnumTearOff();

/// @nodoc
mixin _$SwidEnum {
  String get originalPackagePath => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;
  List<String> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidEnumCopyWith<SwidEnum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidEnumCopyWith<$Res> {
  factory $SwidEnumCopyWith(SwidEnum value, $Res Function(SwidEnum) then) =
      _$SwidEnumCopyWithImpl<$Res>;
  $Res call(
      {String originalPackagePath, String identifier, List<String> children});
}

/// @nodoc
class _$SwidEnumCopyWithImpl<$Res> implements $SwidEnumCopyWith<$Res> {
  _$SwidEnumCopyWithImpl(this._value, this._then);

  final SwidEnum _value;
  // ignore: unused_field
  final $Res Function(SwidEnum) _then;

  @override
  $Res call({
    Object? originalPackagePath = freezed,
    Object? identifier = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $SwidEnumCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String originalPackagePath, String identifier, List<String> children});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidEnumCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? originalPackagePath = freezed,
    Object? identifier = freezed,
    Object? children = freezed,
  }) {
    return _then(_$Data(
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data(
      {required this.originalPackagePath,
      required this.identifier,
      required this.children})
      : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String originalPackagePath;
  @override
  final String identifier;
  @override
  final List<String> children;

  @override
  String toString() {
    return 'SwidEnum(originalPackagePath: $originalPackagePath, identifier: $identifier, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.originalPackagePath, originalPackagePath) ||
                const DeepCollectionEquality()
                    .equals(other.originalPackagePath, originalPackagePath)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originalPackagePath) ^
      const DeepCollectionEquality().hash(identifier) ^
      const DeepCollectionEquality().hash(children);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data extends SwidEnum {
  factory _$Data(
      {required String originalPackagePath,
      required String identifier,
      required List<String> children}) = _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get originalPackagePath => throw _privateConstructorUsedError;
  @override
  String get identifier => throw _privateConstructorUsedError;
  @override
  List<String> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
