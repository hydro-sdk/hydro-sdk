// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidEnum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidEnum _$SwidEnumFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidEnumTearOff {
  const _$SwidEnumTearOff();

// ignore: unused_element
  _$Data call(
      {@required String originalPackagePath,
      @required String identifier,
      @required List<String> children}) {
    return _$Data(
      originalPackagePath: originalPackagePath,
      identifier: identifier,
      children: children,
    );
  }

// ignore: unused_element
  SwidEnum fromJson(Map<String, Object> json) {
    return SwidEnum.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidEnum = _$SwidEnumTearOff();

/// @nodoc
mixin _$SwidEnum {
  String get originalPackagePath;
  String get identifier;
  List<String> get children;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidEnumCopyWith<SwidEnum> get copyWith;
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
    Object originalPackagePath = freezed,
    Object identifier = freezed,
    Object children = freezed,
  }) {
    return _then(_value.copyWith(
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      identifier:
          identifier == freezed ? _value.identifier : identifier as String,
      children:
          children == freezed ? _value.children : children as List<String>,
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
    Object originalPackagePath = freezed,
    Object identifier = freezed,
    Object children = freezed,
  }) {
    return _then(_$Data(
      originalPackagePath: originalPackagePath == freezed
          ? _value.originalPackagePath
          : originalPackagePath as String,
      identifier:
          identifier == freezed ? _value.identifier : identifier as String,
      children:
          children == freezed ? _value.children : children as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data(
      {@required this.originalPackagePath,
      @required this.identifier,
      @required this.children})
      : assert(originalPackagePath != null),
        assert(identifier != null),
        assert(children != null);

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

abstract class _$Data implements SwidEnum {
  const factory _$Data(
      {@required String originalPackagePath,
      @required String identifier,
      @required List<String> children}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get originalPackagePath;
  @override
  String get identifier;
  @override
  List<String> get children;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
