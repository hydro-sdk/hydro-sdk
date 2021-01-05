// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidTypeFormal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidTypeFormal _$SwidTypeFormalFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$SwidTypeFormalTearOff {
  const _$SwidTypeFormalTearOff();

// ignore: unused_element
  _$Data call(
      {@required String name,
      @required SwidReferenceDeclarationKind swidReferenceDeclarationKind}) {
    return _$Data(
      name: name,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind,
    );
  }

// ignore: unused_element
  SwidTypeFormal fromJson(Map<String, Object> json) {
    return SwidTypeFormal.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidTypeFormal = _$SwidTypeFormalTearOff();

/// @nodoc
mixin _$SwidTypeFormal {
  String get name;
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind;

  Map<String, dynamic> toJson();
  $SwidTypeFormalCopyWith<SwidTypeFormal> get copyWith;
}

/// @nodoc
abstract class $SwidTypeFormalCopyWith<$Res> {
  factory $SwidTypeFormalCopyWith(
          SwidTypeFormal value, $Res Function(SwidTypeFormal) then) =
      _$SwidTypeFormalCopyWithImpl<$Res>;
  $Res call(
      {String name, SwidReferenceDeclarationKind swidReferenceDeclarationKind});
}

/// @nodoc
class _$SwidTypeFormalCopyWithImpl<$Res>
    implements $SwidTypeFormalCopyWith<$Res> {
  _$SwidTypeFormalCopyWithImpl(this._value, this._then);

  final SwidTypeFormal _value;
  // ignore: unused_field
  final $Res Function(SwidTypeFormal) _then;

  @override
  $Res call({
    Object name = freezed,
    Object swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $SwidTypeFormalCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, SwidReferenceDeclarationKind swidReferenceDeclarationKind});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SwidTypeFormalCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object name = freezed,
    Object swidReferenceDeclarationKind = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : name as String,
      swidReferenceDeclarationKind: swidReferenceDeclarationKind == freezed
          ? _value.swidReferenceDeclarationKind
          : swidReferenceDeclarationKind as SwidReferenceDeclarationKind,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data({@required this.name, @required this.swidReferenceDeclarationKind})
      : assert(name != null),
        assert(swidReferenceDeclarationKind != null);

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final SwidReferenceDeclarationKind swidReferenceDeclarationKind;

  @override
  String toString() {
    return 'SwidTypeFormal(name: $name, swidReferenceDeclarationKind: $swidReferenceDeclarationKind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.swidReferenceDeclarationKind,
                    swidReferenceDeclarationKind) ||
                const DeepCollectionEquality().equals(
                    other.swidReferenceDeclarationKind,
                    swidReferenceDeclarationKind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(swidReferenceDeclarationKind);

  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$DataToJson(this);
  }
}

abstract class _$Data implements SwidTypeFormal {
  factory _$Data(
          {@required
              String name,
          @required
              SwidReferenceDeclarationKind swidReferenceDeclarationKind}) =
      _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  SwidReferenceDeclarationKind get swidReferenceDeclarationKind;
  @override
  _$$DataCopyWith<_$Data> get copyWith;
}
