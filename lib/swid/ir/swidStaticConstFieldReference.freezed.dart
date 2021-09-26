// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidStaticConstFieldReference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidStaticConstFieldReference _$SwidStaticConstFieldReferenceFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstFieldReferenceTearOff {
  const _$SwidStaticConstFieldReferenceTearOff();

  _$Data call({required String name}) {
    return _$Data(
      name: name,
    );
  }

  SwidStaticConstFieldReference fromJson(Map<String, Object> json) {
    return SwidStaticConstFieldReference.fromJson(json);
  }
}

/// @nodoc
const $SwidStaticConstFieldReference = _$SwidStaticConstFieldReferenceTearOff();

/// @nodoc
mixin _$SwidStaticConstFieldReference {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidStaticConstFieldReferenceCopyWith<SwidStaticConstFieldReference>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidStaticConstFieldReferenceCopyWith<$Res> {
  factory $SwidStaticConstFieldReferenceCopyWith(
          SwidStaticConstFieldReference value,
          $Res Function(SwidStaticConstFieldReference) then) =
      _$SwidStaticConstFieldReferenceCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$SwidStaticConstFieldReferenceCopyWithImpl<$Res>
    implements $SwidStaticConstFieldReferenceCopyWith<$Res> {
  _$SwidStaticConstFieldReferenceCopyWithImpl(this._value, this._then);

  final SwidStaticConstFieldReference _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstFieldReference) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstFieldReferenceCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstFieldReferenceCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data({required this.name}) : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'SwidStaticConstFieldReference(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data extends SwidStaticConstFieldReference {
  factory _$Data({required String name}) = _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
