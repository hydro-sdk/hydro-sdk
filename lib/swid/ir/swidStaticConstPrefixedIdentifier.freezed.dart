// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidStaticConstPrefixedIdentifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidStaticConstPrefixedIdentifier _$SwidStaticConstPrefixedIdentifierFromJson(
    Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidStaticConstPrefixedIdentifierTearOff {
  const _$SwidStaticConstPrefixedIdentifierTearOff();

// ignore: unused_element
  _$Data call(
      {@required SwidInterface prefix,
      @required SwidStaticConstFieldReference staticConstFieldReference}) {
    return _$Data(
      prefix: prefix,
      staticConstFieldReference: staticConstFieldReference,
    );
  }

// ignore: unused_element
  SwidStaticConstPrefixedIdentifier fromJson(Map<String, Object> json) {
    return SwidStaticConstPrefixedIdentifier.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidStaticConstPrefixedIdentifier =
    _$SwidStaticConstPrefixedIdentifierTearOff();

/// @nodoc
mixin _$SwidStaticConstPrefixedIdentifier {
  SwidInterface get prefix;
  SwidStaticConstFieldReference get staticConstFieldReference;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SwidStaticConstPrefixedIdentifierCopyWith<SwidStaticConstPrefixedIdentifier>
      get copyWith;
}

/// @nodoc
abstract class $SwidStaticConstPrefixedIdentifierCopyWith<$Res> {
  factory $SwidStaticConstPrefixedIdentifierCopyWith(
          SwidStaticConstPrefixedIdentifier value,
          $Res Function(SwidStaticConstPrefixedIdentifier) then) =
      _$SwidStaticConstPrefixedIdentifierCopyWithImpl<$Res>;
  $Res call(
      {SwidInterface prefix,
      SwidStaticConstFieldReference staticConstFieldReference});

  $SwidInterfaceCopyWith<$Res> get prefix;
  $SwidStaticConstFieldReferenceCopyWith<$Res> get staticConstFieldReference;
}

/// @nodoc
class _$SwidStaticConstPrefixedIdentifierCopyWithImpl<$Res>
    implements $SwidStaticConstPrefixedIdentifierCopyWith<$Res> {
  _$SwidStaticConstPrefixedIdentifierCopyWithImpl(this._value, this._then);

  final SwidStaticConstPrefixedIdentifier _value;
  // ignore: unused_field
  final $Res Function(SwidStaticConstPrefixedIdentifier) _then;

  @override
  $Res call({
    Object prefix = freezed,
    Object staticConstFieldReference = freezed,
  }) {
    return _then(_value.copyWith(
      prefix: prefix == freezed ? _value.prefix : prefix as SwidInterface,
      staticConstFieldReference: staticConstFieldReference == freezed
          ? _value.staticConstFieldReference
          : staticConstFieldReference as SwidStaticConstFieldReference,
    ));
  }

  @override
  $SwidInterfaceCopyWith<$Res> get prefix {
    if (_value.prefix == null) {
      return null;
    }
    return $SwidInterfaceCopyWith<$Res>(_value.prefix, (value) {
      return _then(_value.copyWith(prefix: value));
    });
  }

  @override
  $SwidStaticConstFieldReferenceCopyWith<$Res> get staticConstFieldReference {
    if (_value.staticConstFieldReference == null) {
      return null;
    }
    return $SwidStaticConstFieldReferenceCopyWith<$Res>(
        _value.staticConstFieldReference, (value) {
      return _then(_value.copyWith(staticConstFieldReference: value));
    });
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res>
    implements $SwidStaticConstPrefixedIdentifierCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {SwidInterface prefix,
      SwidStaticConstFieldReference staticConstFieldReference});

  @override
  $SwidInterfaceCopyWith<$Res> get prefix;
  @override
  $SwidStaticConstFieldReferenceCopyWith<$Res> get staticConstFieldReference;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res>
    extends _$SwidStaticConstPrefixedIdentifierCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object prefix = freezed,
    Object staticConstFieldReference = freezed,
  }) {
    return _then(_$Data(
      prefix: prefix == freezed ? _value.prefix : prefix as SwidInterface,
      staticConstFieldReference: staticConstFieldReference == freezed
          ? _value.staticConstFieldReference
          : staticConstFieldReference as SwidStaticConstFieldReference,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  const _$_$Data(
      {@required this.prefix, @required this.staticConstFieldReference})
      : assert(prefix != null),
        assert(staticConstFieldReference != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final SwidInterface prefix;
  @override
  final SwidStaticConstFieldReference staticConstFieldReference;

  @override
  String toString() {
    return 'SwidStaticConstPrefixedIdentifier(prefix: $prefix, staticConstFieldReference: $staticConstFieldReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.staticConstFieldReference,
                    staticConstFieldReference) ||
                const DeepCollectionEquality().equals(
                    other.staticConstFieldReference,
                    staticConstFieldReference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(staticConstFieldReference);

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidStaticConstPrefixedIdentifier {
  const factory _$Data(
          {@required SwidInterface prefix,
          @required SwidStaticConstFieldReference staticConstFieldReference}) =
      _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  SwidInterface get prefix;
  @override
  SwidStaticConstFieldReference get staticConstFieldReference;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
