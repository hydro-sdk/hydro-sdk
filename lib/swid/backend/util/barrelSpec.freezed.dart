// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'barrelSpec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BarrelSpecTearOff {
  const _$BarrelSpecTearOff();

  _$BarrelSpecCtor call(
      {required String path,
      required String name,
      required List<BarrelMember> members}) {
    return _$BarrelSpecCtor(
      path: path,
      name: name,
      members: members,
    );
  }
}

/// @nodoc
const $BarrelSpec = _$BarrelSpecTearOff();

/// @nodoc
mixin _$BarrelSpec {
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<BarrelMember> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarrelSpecCopyWith<BarrelSpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarrelSpecCopyWith<$Res> {
  factory $BarrelSpecCopyWith(
          BarrelSpec value, $Res Function(BarrelSpec) then) =
      _$BarrelSpecCopyWithImpl<$Res>;
  $Res call({String path, String name, List<BarrelMember> members});
}

/// @nodoc
class _$BarrelSpecCopyWithImpl<$Res> implements $BarrelSpecCopyWith<$Res> {
  _$BarrelSpecCopyWithImpl(this._value, this._then);

  final BarrelSpec _value;
  // ignore: unused_field
  final $Res Function(BarrelSpec) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<BarrelMember>,
    ));
  }
}

/// @nodoc
abstract class _$$BarrelSpecCtorCopyWith<$Res>
    implements $BarrelSpecCopyWith<$Res> {
  factory _$$BarrelSpecCtorCopyWith(
          _$BarrelSpecCtor value, $Res Function(_$BarrelSpecCtor) then) =
      __$$BarrelSpecCtorCopyWithImpl<$Res>;
  @override
  $Res call({String path, String name, List<BarrelMember> members});
}

/// @nodoc
class __$$BarrelSpecCtorCopyWithImpl<$Res>
    extends _$BarrelSpecCopyWithImpl<$Res>
    implements _$$BarrelSpecCtorCopyWith<$Res> {
  __$$BarrelSpecCtorCopyWithImpl(
      _$BarrelSpecCtor _value, $Res Function(_$BarrelSpecCtor) _then)
      : super(_value, (v) => _then(v as _$BarrelSpecCtor));

  @override
  _$BarrelSpecCtor get _value => super._value as _$BarrelSpecCtor;

  @override
  $Res call({
    Object? path = freezed,
    Object? name = freezed,
    Object? members = freezed,
  }) {
    return _then(_$BarrelSpecCtor(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<BarrelMember>,
    ));
  }
}

/// @nodoc

class _$_$BarrelSpecCtor extends _$BarrelSpecCtor {
  _$_$BarrelSpecCtor(
      {required this.path, required this.name, required this.members})
      : super._();

  @override
  final String path;
  @override
  final String name;
  @override
  final List<BarrelMember> members;

  @override
  String toString() {
    return 'BarrelSpec(path: $path, name: $name, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$BarrelSpecCtor &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(members);

  @JsonKey(ignore: true)
  @override
  _$$BarrelSpecCtorCopyWith<_$BarrelSpecCtor> get copyWith =>
      __$$BarrelSpecCtorCopyWithImpl<_$BarrelSpecCtor>(this, _$identity);
}

abstract class _$BarrelSpecCtor extends BarrelSpec {
  factory _$BarrelSpecCtor(
      {required String path,
      required String name,
      required List<BarrelMember> members}) = _$_$BarrelSpecCtor;
  _$BarrelSpecCtor._() : super._();

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<BarrelMember> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$BarrelSpecCtorCopyWith<_$BarrelSpecCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
