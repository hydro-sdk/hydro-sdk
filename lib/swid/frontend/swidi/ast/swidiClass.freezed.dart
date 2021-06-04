// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiClass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiClassTearOff {
  const _$SwidiClassTearOff();

// ignore: unused_element
  _$SwidiClassCtor call(
      {required String name,
      required SwidiLibraryScopePrefix libraryScopePrefix,
      required List<SwidiFunctionDeclaration> methods}) {
    return _$SwidiClassCtor(
      name: name,
      libraryScopePrefix: libraryScopePrefix,
      methods: methods,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiClass = _$SwidiClassTearOff();

/// @nodoc
mixin _$SwidiClass {
  String get name;
  SwidiLibraryScopePrefix get libraryScopePrefix;
  List<SwidiFunctionDeclaration> get methods;

  @JsonKey(ignore: true)
  $SwidiClassCopyWith<SwidiClass> get copyWith;
}

/// @nodoc
abstract class $SwidiClassCopyWith<$Res> {
  factory $SwidiClassCopyWith(
          SwidiClass value, $Res Function(SwidiClass) then) =
      _$SwidiClassCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      SwidiLibraryScopePrefix? libraryScopePrefix,
      List<SwidiFunctionDeclaration>? methods});

  $SwidiLibraryScopePrefixCopyWith<$Res> get libraryScopePrefix;
}

/// @nodoc
class _$SwidiClassCopyWithImpl<$Res> implements $SwidiClassCopyWith<$Res> {
  _$SwidiClassCopyWithImpl(this._value, this._then);

  final SwidiClass _value;
  // ignore: unused_field
  final $Res Function(SwidiClass?) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? libraryScopePrefix = freezed,
    Object? methods = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String?,
      libraryScopePrefix: libraryScopePrefix == freezed
          ? _value.libraryScopePrefix
          : libraryScopePrefix as SwidiLibraryScopePrefix?,
      methods: methods == freezed
          ? _value.methods
          : methods as List<SwidiFunctionDeclaration>?,
    ));
  }

  @override
  $SwidiLibraryScopePrefixCopyWith<$Res> get libraryScopePrefix {
    if (_value.libraryScopePrefix == null) {
      return null;
    }
    return $SwidiLibraryScopePrefixCopyWith<$Res>(_value.libraryScopePrefix,
        (value) {
      return _then(_value.copyWith(libraryScopePrefix: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiClassCtorCopyWith<$Res>
    implements $SwidiClassCopyWith<$Res> {
  factory _$$SwidiClassCtorCopyWith(
          _$SwidiClassCtor value, $Res Function(_$SwidiClassCtor) then) =
      __$$SwidiClassCtorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      SwidiLibraryScopePrefix? libraryScopePrefix,
      List<SwidiFunctionDeclaration>? methods});

  @override
  $SwidiLibraryScopePrefixCopyWith<$Res> get libraryScopePrefix;
}

/// @nodoc
class __$$SwidiClassCtorCopyWithImpl<$Res>
    extends _$SwidiClassCopyWithImpl<$Res>
    implements _$$SwidiClassCtorCopyWith<$Res> {
  __$$SwidiClassCtorCopyWithImpl(
      _$SwidiClassCtor _value, $Res Function(_$SwidiClassCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiClassCtor));

  @override
  _$SwidiClassCtor get _value => super._value as _$SwidiClassCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? libraryScopePrefix = freezed,
    Object? methods = freezed,
  }) {
    return _then(_$SwidiClassCtor(
      name: name == freezed ? _value.name : (name as String?)!,
      libraryScopePrefix: libraryScopePrefix == freezed
          ? _value.libraryScopePrefix
          : (libraryScopePrefix as SwidiLibraryScopePrefix?)!,
      methods: methods == freezed
          ? _value.methods
          : (methods as List<SwidiFunctionDeclaration>?)!,
    ));
  }
}

/// @nodoc
class _$_$SwidiClassCtor implements _$SwidiClassCtor {
  const _$_$SwidiClassCtor(
      {required this.name,
      required this.libraryScopePrefix,
      required this.methods})
      : assert(name != null),
        assert(libraryScopePrefix != null),
        assert(methods != null);

  @override
  final String name;
  @override
  final SwidiLibraryScopePrefix libraryScopePrefix;
  @override
  final List<SwidiFunctionDeclaration> methods;

  @override
  String toString() {
    return 'SwidiClass(name: $name, libraryScopePrefix: $libraryScopePrefix, methods: $methods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiClassCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.libraryScopePrefix, libraryScopePrefix) ||
                const DeepCollectionEquality()
                    .equals(other.libraryScopePrefix, libraryScopePrefix)) &&
            (identical(other.methods, methods) ||
                const DeepCollectionEquality().equals(other.methods, methods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(libraryScopePrefix) ^
      const DeepCollectionEquality().hash(methods);

  @JsonKey(ignore: true)
  @override
  _$$SwidiClassCtorCopyWith<_$SwidiClassCtor> get copyWith =>
      __$$SwidiClassCtorCopyWithImpl<_$SwidiClassCtor>(this, _$identity);
}

abstract class _$SwidiClassCtor implements SwidiClass {
  const factory _$SwidiClassCtor(
      {required String name,
      required SwidiLibraryScopePrefix libraryScopePrefix,
      required List<SwidiFunctionDeclaration> methods}) = _$_$SwidiClassCtor;

  @override
  String get name;
  @override
  SwidiLibraryScopePrefix get libraryScopePrefix;
  @override
  List<SwidiFunctionDeclaration> get methods;
  @override
  @JsonKey(ignore: true)
  _$$SwidiClassCtorCopyWith<_$SwidiClassCtor> get copyWith;
}
