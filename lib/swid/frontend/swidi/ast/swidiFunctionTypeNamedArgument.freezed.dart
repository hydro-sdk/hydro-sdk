// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiFunctionTypeNamedArgument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiFunctionTypeNamedArgumentTearOff {
  const _$SwidiFunctionTypeNamedArgumentTearOff();

  _$SwidiFunctionTypeNamedArgumentCtor call(
      {required String name, required SwidiInterface type}) {
    return _$SwidiFunctionTypeNamedArgumentCtor(
      name: name,
      type: type,
    );
  }
}

/// @nodoc
const $SwidiFunctionTypeNamedArgument =
    _$SwidiFunctionTypeNamedArgumentTearOff();

/// @nodoc
mixin _$SwidiFunctionTypeNamedArgument {
  String get name => throw _privateConstructorUsedError;
  SwidiInterface get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiFunctionTypeNamedArgumentCopyWith<SwidiFunctionTypeNamedArgument>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiFunctionTypeNamedArgumentCopyWith<$Res> {
  factory $SwidiFunctionTypeNamedArgumentCopyWith(
          SwidiFunctionTypeNamedArgument value,
          $Res Function(SwidiFunctionTypeNamedArgument) then) =
      _$SwidiFunctionTypeNamedArgumentCopyWithImpl<$Res>;
  $Res call({String name, SwidiInterface type});

  $SwidiInterfaceCopyWith<$Res> get type;
}

/// @nodoc
class _$SwidiFunctionTypeNamedArgumentCopyWithImpl<$Res>
    implements $SwidiFunctionTypeNamedArgumentCopyWith<$Res> {
  _$SwidiFunctionTypeNamedArgumentCopyWithImpl(this._value, this._then);

  final SwidiFunctionTypeNamedArgument _value;
  // ignore: unused_field
  final $Res Function(SwidiFunctionTypeNamedArgument) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
    ));
  }

  @override
  $SwidiInterfaceCopyWith<$Res> get type {
    return $SwidiInterfaceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiFunctionTypeNamedArgumentCtorCopyWith<$Res>
    implements $SwidiFunctionTypeNamedArgumentCopyWith<$Res> {
  factory _$$SwidiFunctionTypeNamedArgumentCtorCopyWith(
          _$SwidiFunctionTypeNamedArgumentCtor value,
          $Res Function(_$SwidiFunctionTypeNamedArgumentCtor) then) =
      __$$SwidiFunctionTypeNamedArgumentCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidiInterface type});

  @override
  $SwidiInterfaceCopyWith<$Res> get type;
}

/// @nodoc
class __$$SwidiFunctionTypeNamedArgumentCtorCopyWithImpl<$Res>
    extends _$SwidiFunctionTypeNamedArgumentCopyWithImpl<$Res>
    implements _$$SwidiFunctionTypeNamedArgumentCtorCopyWith<$Res> {
  __$$SwidiFunctionTypeNamedArgumentCtorCopyWithImpl(
      _$SwidiFunctionTypeNamedArgumentCtor _value,
      $Res Function(_$SwidiFunctionTypeNamedArgumentCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiFunctionTypeNamedArgumentCtor));

  @override
  _$SwidiFunctionTypeNamedArgumentCtor get _value =>
      super._value as _$SwidiFunctionTypeNamedArgumentCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SwidiFunctionTypeNamedArgumentCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidiInterface,
    ));
  }
}

/// @nodoc

class _$_$SwidiFunctionTypeNamedArgumentCtor
    extends _$SwidiFunctionTypeNamedArgumentCtor {
  _$_$SwidiFunctionTypeNamedArgumentCtor(
      {required this.name, required this.type})
      : super._();

  @override
  final String name;
  @override
  final SwidiInterface type;

  @override
  String toString() {
    return 'SwidiFunctionTypeNamedArgument(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiFunctionTypeNamedArgumentCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$$SwidiFunctionTypeNamedArgumentCtorCopyWith<
          _$SwidiFunctionTypeNamedArgumentCtor>
      get copyWith => __$$SwidiFunctionTypeNamedArgumentCtorCopyWithImpl<
          _$SwidiFunctionTypeNamedArgumentCtor>(this, _$identity);
}

abstract class _$SwidiFunctionTypeNamedArgumentCtor
    extends SwidiFunctionTypeNamedArgument {
  factory _$SwidiFunctionTypeNamedArgumentCtor(
      {required String name,
      required SwidiInterface type}) = _$_$SwidiFunctionTypeNamedArgumentCtor;
  _$SwidiFunctionTypeNamedArgumentCtor._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidiInterface get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiFunctionTypeNamedArgumentCtorCopyWith<
          _$SwidiFunctionTypeNamedArgumentCtor>
      get copyWith => throw _privateConstructorUsedError;
}
