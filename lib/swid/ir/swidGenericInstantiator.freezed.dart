// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidGenericInstantiator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidGenericInstantiator _$SwidGenericInstantiatorFromJson(
    Map<String, dynamic> json) {
  return _$SwidGenericInstantiatorCtor.fromJson(json);
}

/// @nodoc
class _$SwidGenericInstantiatorTearOff {
  const _$SwidGenericInstantiatorTearOff();

  _$SwidGenericInstantiatorCtor call(
      {required String name,
      required SwidInstantiatedGeneric instantiatedGeneric}) {
    return _$SwidGenericInstantiatorCtor(
      name: name,
      instantiatedGeneric: instantiatedGeneric,
    );
  }

  SwidGenericInstantiator fromJson(Map<String, Object> json) {
    return SwidGenericInstantiator.fromJson(json);
  }
}

/// @nodoc
const $SwidGenericInstantiator = _$SwidGenericInstantiatorTearOff();

/// @nodoc
mixin _$SwidGenericInstantiator {
  String get name => throw _privateConstructorUsedError;
  SwidInstantiatedGeneric get instantiatedGeneric =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidGenericInstantiatorCopyWith<SwidGenericInstantiator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidGenericInstantiatorCopyWith<$Res> {
  factory $SwidGenericInstantiatorCopyWith(SwidGenericInstantiator value,
          $Res Function(SwidGenericInstantiator) then) =
      _$SwidGenericInstantiatorCopyWithImpl<$Res>;
  $Res call({String name, SwidInstantiatedGeneric instantiatedGeneric});

  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric;
}

/// @nodoc
class _$SwidGenericInstantiatorCopyWithImpl<$Res>
    implements $SwidGenericInstantiatorCopyWith<$Res> {
  _$SwidGenericInstantiatorCopyWithImpl(this._value, this._then);

  final SwidGenericInstantiator _value;
  // ignore: unused_field
  final $Res Function(SwidGenericInstantiator) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? instantiatedGeneric = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instantiatedGeneric: instantiatedGeneric == freezed
          ? _value.instantiatedGeneric
          : instantiatedGeneric // ignore: cast_nullable_to_non_nullable
              as SwidInstantiatedGeneric,
    ));
  }

  @override
  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric {
    return $SwidInstantiatedGenericCopyWith<$Res>(_value.instantiatedGeneric,
        (value) {
      return _then(_value.copyWith(instantiatedGeneric: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidGenericInstantiatorCtorCopyWith<$Res>
    implements $SwidGenericInstantiatorCopyWith<$Res> {
  factory _$$SwidGenericInstantiatorCtorCopyWith(
          _$SwidGenericInstantiatorCtor value,
          $Res Function(_$SwidGenericInstantiatorCtor) then) =
      __$$SwidGenericInstantiatorCtorCopyWithImpl<$Res>;
  @override
  $Res call({String name, SwidInstantiatedGeneric instantiatedGeneric});

  @override
  $SwidInstantiatedGenericCopyWith<$Res> get instantiatedGeneric;
}

/// @nodoc
class __$$SwidGenericInstantiatorCtorCopyWithImpl<$Res>
    extends _$SwidGenericInstantiatorCopyWithImpl<$Res>
    implements _$$SwidGenericInstantiatorCtorCopyWith<$Res> {
  __$$SwidGenericInstantiatorCtorCopyWithImpl(
      _$SwidGenericInstantiatorCtor _value,
      $Res Function(_$SwidGenericInstantiatorCtor) _then)
      : super(_value, (v) => _then(v as _$SwidGenericInstantiatorCtor));

  @override
  _$SwidGenericInstantiatorCtor get _value =>
      super._value as _$SwidGenericInstantiatorCtor;

  @override
  $Res call({
    Object? name = freezed,
    Object? instantiatedGeneric = freezed,
  }) {
    return _then(_$SwidGenericInstantiatorCtor(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      instantiatedGeneric: instantiatedGeneric == freezed
          ? _value.instantiatedGeneric
          : instantiatedGeneric // ignore: cast_nullable_to_non_nullable
              as SwidInstantiatedGeneric,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidGenericInstantiatorCtor extends _$SwidGenericInstantiatorCtor {
  _$_$SwidGenericInstantiatorCtor(
      {required this.name, required this.instantiatedGeneric})
      : super._();

  factory _$_$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidGenericInstantiatorCtorFromJson(json);

  @override
  final String name;
  @override
  final SwidInstantiatedGeneric instantiatedGeneric;

  @override
  String toString() {
    return 'SwidGenericInstantiator(name: $name, instantiatedGeneric: $instantiatedGeneric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidGenericInstantiatorCtor &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.instantiatedGeneric, instantiatedGeneric) ||
                const DeepCollectionEquality()
                    .equals(other.instantiatedGeneric, instantiatedGeneric)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(instantiatedGeneric);

  @JsonKey(ignore: true)
  @override
  _$$SwidGenericInstantiatorCtorCopyWith<_$SwidGenericInstantiatorCtor>
      get copyWith => __$$SwidGenericInstantiatorCtorCopyWithImpl<
          _$SwidGenericInstantiatorCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidGenericInstantiatorCtorToJson(this);
  }
}

abstract class _$SwidGenericInstantiatorCtor extends SwidGenericInstantiator {
  factory _$SwidGenericInstantiatorCtor(
          {required String name,
          required SwidInstantiatedGeneric instantiatedGeneric}) =
      _$_$SwidGenericInstantiatorCtor;
  _$SwidGenericInstantiatorCtor._() : super._();

  factory _$SwidGenericInstantiatorCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidGenericInstantiatorCtor.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  SwidInstantiatedGeneric get instantiatedGeneric =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidGenericInstantiatorCtorCopyWith<_$SwidGenericInstantiatorCtor>
      get copyWith => throw _privateConstructorUsedError;
}
