// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiTypeFormal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiTypeFormalTearOff {
  const _$SwidiTypeFormalTearOff();

  _$SwidiTypeFormalCtor call(
      {required String name, required SwidiInterface bound}) {
    return _$SwidiTypeFormalCtor(
      name: name,
      bound: bound,
    );
  }
}

/// @nodoc
const $SwidiTypeFormal = _$SwidiTypeFormalTearOff();

/// @nodoc
mixin _$SwidiTypeFormal {
  String get name => throw _privateConstructorUsedError;
  SwidiInterface get bound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiTypeFormalCopyWith<SwidiTypeFormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiTypeFormalCopyWith<$Res> {
  factory $SwidiTypeFormalCopyWith(
          SwidiTypeFormal value, $Res Function(SwidiTypeFormal) then) =
      _$SwidiTypeFormalCopyWithImpl<$Res>;
  $Res call({String name, SwidiInterface bound});

  $SwidiInterfaceCopyWith<$Res> get bound;
}

/// @nodoc
class _$SwidiTypeFormalCopyWithImpl<$Res>
    implements $SwidiTypeFormalCopyWith<$Res> {
  _$SwidiTypeFormalCopyWithImpl(this._value, this._then);

  final SwidiTypeFormal _value;
  // ignore: unused_field
  final $Res Function(SwidiTypeFormal) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? bound = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bound: bound == freezed
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
    ));
  }

  @override
  $SwidiInterfaceCopyWith<$Res> get bound {
    return $SwidiInterfaceCopyWith<$Res>(_value.bound, (value) {
      return _then(_value.copyWith(bound: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiTypeFormalCtorCopyWith<$Res>
    implements $SwidiTypeFormalCopyWith<$Res> {
  factory _$$SwidiTypeFormalCtorCopyWith(_$SwidiTypeFormalCtor value,
          $Res Function(_$SwidiTypeFormalCtor) then) =
      __$$SwidiTypeFormalCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidiInterface bound});

  @override
  $SwidiInterfaceCopyWith<$Res> get bound;
}

/// @nodoc
class __$$SwidiTypeFormalCtorCopyWithImpl<$Res>
    extends _$SwidiTypeFormalCopyWithImpl<$Res>
    implements _$$SwidiTypeFormalCtorCopyWith<$Res> {
  __$$SwidiTypeFormalCtorCopyWithImpl(
      _$SwidiTypeFormalCtor _value, $Res Function(_$SwidiTypeFormalCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiTypeFormalCtor));

  @override
  _$SwidiTypeFormalCtor get _value => super._value as _$SwidiTypeFormalCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? bound = freezed,
  }) {
    return _then(_$SwidiTypeFormalCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bound: bound == freezed
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
    ));
  }
}

/// @nodoc

class _$_$SwidiTypeFormalCtor extends _$SwidiTypeFormalCtor {
  _$_$SwidiTypeFormalCtor({required this.name, required this.bound})
      : super._();

  @override
  final String name;
  @override
  final SwidiInterface bound;

  @override
  String toString() {
    return 'SwidiTypeFormal(name: $name, bound: $bound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiTypeFormalCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.bound, bound) ||
                const DeepCollectionEquality().equals(other.bound, bound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(bound);

  @JsonKey(ignore: true)
  @override
  _$$SwidiTypeFormalCtorCopyWith<_$SwidiTypeFormalCtor> get copyWith =>
      __$$SwidiTypeFormalCtorCopyWithImpl<_$SwidiTypeFormalCtor>(
          this, _$identity);
}

abstract class _$SwidiTypeFormalCtor extends SwidiTypeFormal {
  factory _$SwidiTypeFormalCtor(
      {required String name,
      required SwidiInterface bound}) = _$_$SwidiTypeFormalCtor;
  _$SwidiTypeFormalCtor._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidiInterface get bound => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiTypeFormalCtorCopyWith<_$SwidiTypeFormalCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
