// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tsVmDeclaration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TsVmDeclaration _$TsVmDeclarationFromJson(Map<String, dynamic> json) {
  return _$Data.fromJson(json);
}

/// @nodoc
class _$TsVmDeclarationTearOff {
  const _$TsVmDeclarationTearOff();

// ignore: unused_element
  _$Data call(
      {@required String name,
      @required List<SwidFunctionType> methods,
      @required List<TsVmDeclaration> children}) {
    return _$Data(
      name: name,
      methods: methods,
      children: children,
    );
  }

// ignore: unused_element
  TsVmDeclaration fromJson(Map<String, Object> json) {
    return TsVmDeclaration.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TsVmDeclaration = _$TsVmDeclarationTearOff();

/// @nodoc
mixin _$TsVmDeclaration {
  String get name;
  List<SwidFunctionType> get methods;
  List<TsVmDeclaration> get children;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TsVmDeclarationCopyWith<TsVmDeclaration> get copyWith;
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
    Object name = freezed,
    Object methods = freezed,
    Object children = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      methods: methods == freezed
          ? _value.methods
          : methods as List<SwidFunctionType>,
      children: children == freezed
          ? _value.children
          : children as List<TsVmDeclaration>,
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
    Object name = freezed,
    Object methods = freezed,
    Object children = freezed,
  }) {
    return _then(_$Data(
      name: name == freezed ? _value.name : name as String,
      methods: methods == freezed
          ? _value.methods
          : methods as List<SwidFunctionType>,
      children: children == freezed
          ? _value.children
          : children as List<TsVmDeclaration>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$Data implements _$Data {
  _$_$Data(
      {@required this.name, @required this.methods, @required this.children})
      : assert(name != null),
        assert(methods != null),
        assert(children != null);

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

abstract class _$Data implements TsVmDeclaration {
  factory _$Data(
      {@required String name,
      @required List<SwidFunctionType> methods,
      @required List<TsVmDeclaration> children}) = _$_$Data;

  factory _$Data.fromJson(Map<String, dynamic> json) = _$_$Data.fromJson;

  @override
  String get name;
  @override
  List<SwidFunctionType> get methods;
  @override
  List<TsVmDeclaration> get children;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith;
}
