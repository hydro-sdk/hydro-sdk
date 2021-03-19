// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'barrelSpec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BarrelSpecTearOff {
  const _$BarrelSpecTearOff();

// ignore: unused_element
  _$BarrelSpecCtor call(
      {@required String path,
      @required String name,
      @required List<BarrelMember> members}) {
    return _$BarrelSpecCtor(
      path: path,
      name: name,
      members: members,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BarrelSpec = _$BarrelSpecTearOff();

/// @nodoc
mixin _$BarrelSpec {
  String get path;
  String get name;
  List<BarrelMember> get members;

  @JsonKey(ignore: true)
  $BarrelSpecCopyWith<BarrelSpec> get copyWith;
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
    Object path = freezed,
    Object name = freezed,
    Object members = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      name: name == freezed ? _value.name : name as String,
      members:
          members == freezed ? _value.members : members as List<BarrelMember>,
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
    Object path = freezed,
    Object name = freezed,
    Object members = freezed,
  }) {
    return _then(_$BarrelSpecCtor(
      path: path == freezed ? _value.path : path as String,
      name: name == freezed ? _value.name : name as String,
      members:
          members == freezed ? _value.members : members as List<BarrelMember>,
    ));
  }
}

/// @nodoc
class _$_$BarrelSpecCtor implements _$BarrelSpecCtor {
  _$_$BarrelSpecCtor(
      {@required this.path, @required this.name, @required this.members})
      : assert(path != null),
        assert(name != null),
        assert(members != null);

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

abstract class _$BarrelSpecCtor implements BarrelSpec {
  factory _$BarrelSpecCtor(
      {@required String path,
      @required String name,
      @required List<BarrelMember> members}) = _$_$BarrelSpecCtor;

  @override
  String get path;
  @override
  String get name;
  @override
  List<BarrelMember> get members;
  @override
  @JsonKey(ignore: true)
  _$$BarrelSpecCtorCopyWith<_$BarrelSpecCtor> get copyWith;
}
