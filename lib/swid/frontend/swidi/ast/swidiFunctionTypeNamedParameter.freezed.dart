// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiFunctionTypeNamedParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiFunctionTypeNamedParameterTearOff {
  const _$SwidiFunctionTypeNamedParameterTearOff();

  _$SwidiFunctionTypeNamedParameterCtor call(
      {required String name, required SwidiType type}) {
    return _$SwidiFunctionTypeNamedParameterCtor(
      name: name,
      type: type,
    );
  }
}

/// @nodoc
const $SwidiFunctionTypeNamedParameter =
    _$SwidiFunctionTypeNamedParameterTearOff();

/// @nodoc
mixin _$SwidiFunctionTypeNamedParameter {
  String get name => throw _privateConstructorUsedError;
  SwidiType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiFunctionTypeNamedParameterCopyWith<SwidiFunctionTypeNamedParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiFunctionTypeNamedParameterCopyWith<$Res> {
  factory $SwidiFunctionTypeNamedParameterCopyWith(
          SwidiFunctionTypeNamedParameter value,
          $Res Function(SwidiFunctionTypeNamedParameter) then) =
      _$SwidiFunctionTypeNamedParameterCopyWithImpl<$Res>;
  $Res call({String name, SwidiType type});

  $SwidiTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SwidiFunctionTypeNamedParameterCopyWithImpl<$Res>
    implements $SwidiFunctionTypeNamedParameterCopyWith<$Res> {
  _$SwidiFunctionTypeNamedParameterCopyWithImpl(this._value, this._then);

  final SwidiFunctionTypeNamedParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiFunctionTypeNamedParameter) _then;

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
              as SwidiType,
    ));
  }

  @override
  $SwidiTypeCopyWith<$Res> get type {
    return $SwidiTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiFunctionTypeNamedParameterCtorCopyWith<$Res>
    implements $SwidiFunctionTypeNamedParameterCopyWith<$Res> {
  factory _$$SwidiFunctionTypeNamedParameterCtorCopyWith(
          _$SwidiFunctionTypeNamedParameterCtor value,
          $Res Function(_$SwidiFunctionTypeNamedParameterCtor) then) =
      __$$SwidiFunctionTypeNamedParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidiType type});

  @override
  $SwidiTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$SwidiFunctionTypeNamedParameterCtorCopyWithImpl<$Res>
    extends _$SwidiFunctionTypeNamedParameterCopyWithImpl<$Res>
    implements _$$SwidiFunctionTypeNamedParameterCtorCopyWith<$Res> {
  __$$SwidiFunctionTypeNamedParameterCtorCopyWithImpl(
      _$SwidiFunctionTypeNamedParameterCtor _value,
      $Res Function(_$SwidiFunctionTypeNamedParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiFunctionTypeNamedParameterCtor));

  @override
  _$SwidiFunctionTypeNamedParameterCtor get _value =>
      super._value as _$SwidiFunctionTypeNamedParameterCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SwidiFunctionTypeNamedParameterCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidiType,
    ));
  }
}

/// @nodoc

class _$_$SwidiFunctionTypeNamedParameterCtor
    extends _$SwidiFunctionTypeNamedParameterCtor {
  _$_$SwidiFunctionTypeNamedParameterCtor(
      {required this.name, required this.type})
      : super._();

  @override
  final String name;
  @override
  final SwidiType type;

  @override
  String toString() {
    return 'SwidiFunctionTypeNamedParameter(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiFunctionTypeNamedParameterCtor &&
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
  _$$SwidiFunctionTypeNamedParameterCtorCopyWith<
          _$SwidiFunctionTypeNamedParameterCtor>
      get copyWith => __$$SwidiFunctionTypeNamedParameterCtorCopyWithImpl<
          _$SwidiFunctionTypeNamedParameterCtor>(this, _$identity);
}

abstract class _$SwidiFunctionTypeNamedParameterCtor
    extends SwidiFunctionTypeNamedParameter {
  factory _$SwidiFunctionTypeNamedParameterCtor(
      {required String name,
      required SwidiType type}) = _$_$SwidiFunctionTypeNamedParameterCtor;
  _$SwidiFunctionTypeNamedParameterCtor._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidiType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiFunctionTypeNamedParameterCtorCopyWith<
          _$SwidiFunctionTypeNamedParameterCtor>
      get copyWith => throw _privateConstructorUsedError;
}
