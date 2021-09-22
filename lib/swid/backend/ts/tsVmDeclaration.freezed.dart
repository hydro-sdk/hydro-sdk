// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsVmDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsVmDeclaration _$TsVmDeclarationFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsVmDeclarationTearOff {
  const _$TsVmDeclarationTearOff();

  _$Data call(
      {required String name,
      required List<SwidFunctionType> methods,
      required List<TsVmDeclaration> children}) {
    return _$Data(
      name: name,
      methods: methods,
      children: children,
    );
  }

  TsVmDeclaration fromJson(Map<String, Object> json) {
    return TsVmDeclaration.fromJson(json);
  }
}

/// @nodoc
const $TsVmDeclaration = _$TsVmDeclarationTearOff();

/// @nodoc
mixin _$TsVmDeclaration {
  String get name => throw _privateConstructorUsedError;
  List<SwidFunctionType> get methods => throw _privateConstructorUsedError;
  List<TsVmDeclaration> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TsVmDeclarationCopyWith<TsVmDeclaration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsVmDeclarationCopyWith<$Res> {
  factory $TsVmDeclarationCopyWith(
          TsVmDeclaration value, $Res Function(TsVmDeclaration) then) =
      _$TsVmDeclarationCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<SwidFunctionType> methods,
      List<TsVmDeclaration> children});
}

/// @nodoc
class _$TsVmDeclarationCopyWithImpl<$Res>
    implements $TsVmDeclarationCopyWith<$Res> {
  _$TsVmDeclarationCopyWithImpl(this._value, this._then);

  final TsVmDeclaration _value;
  // ignore: unused_field
  final $Res Function(TsVmDeclaration) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? methods = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      methods: methods == freezed
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<SwidFunctionType>,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TsVmDeclaration>,
    ));
  }
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $TsVmDeclarationCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<SwidFunctionType> methods,
      List<TsVmDeclaration> children});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$TsVmDeclarationCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? methods = freezed,
    Object? children = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      methods: methods == freezed
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<SwidFunctionType>,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TsVmDeclaration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Data extends _$Data {
  _$_$Data({required this.name, required this.methods, required this.children})
      : super._();

  factory _$_$Data.fromJson(Map<String, dynamic> json) =>
      _$_$_$DataFromJson(json);

  @override
  final String name;
  @override
  final List<SwidFunctionType> methods;
  @override
  final List<TsVmDeclaration> children;

  @override
  String toString() {
    return 'TsVmDeclaration(name: $name, methods: $methods, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.methods, methods) ||
                const DeepCollectionEquality()
                    .equals(other.methods, methods)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(methods) ^
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

abstract class _$Data extends TsVmDeclaration {
  factory _$Data(
      {required String name,
      required List<SwidFunctionType> methods,
      required List<TsVmDeclaration> children}) = _$_$Data;
  _$Data._() : super._();

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<SwidFunctionType> get methods => throw _privateConstructorUsedError;
  @override
  List<TsVmDeclaration> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
