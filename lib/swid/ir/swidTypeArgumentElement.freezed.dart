// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidTypeArgumentElement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidTypeArgumentElement _$SwidTypeArgumentElementFromJson(
    Map<String, dynamic> json) {
  return _$SwidTypeArgumentElementCtor.fromJson(json);
}

/// @nodoc
class _$SwidTypeArgumentElementTearOff {
  const _$SwidTypeArgumentElementTearOff();

  _$SwidTypeArgumentElementCtor call({required SwidType bound}) {
    return _$SwidTypeArgumentElementCtor(
      bound: bound,
    );
  }

  SwidTypeArgumentElement fromJson(Map<String, Object> json) {
    return SwidTypeArgumentElement.fromJson(json);
  }
}

/// @nodoc
const $SwidTypeArgumentElement = _$SwidTypeArgumentElementTearOff();

/// @nodoc
mixin _$SwidTypeArgumentElement {
  SwidType get bound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwidTypeArgumentElementCopyWith<SwidTypeArgumentElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidTypeArgumentElementCopyWith<$Res> {
  factory $SwidTypeArgumentElementCopyWith(SwidTypeArgumentElement value,
          $Res Function(SwidTypeArgumentElement) then) =
      _$SwidTypeArgumentElementCopyWithImpl<$Res>;
  $Res call({SwidType bound});

  $SwidTypeCopyWith<$Res> get bound;
}

/// @nodoc
class _$SwidTypeArgumentElementCopyWithImpl<$Res>
    implements $SwidTypeArgumentElementCopyWith<$Res> {
  _$SwidTypeArgumentElementCopyWithImpl(this._value, this._then);

  final SwidTypeArgumentElement _value;
  // ignore: unused_field
  final $Res Function(SwidTypeArgumentElement) _then;

  @override
  $Res call({
    Object? bound = freezed,
  }) {
    return _then(_value.copyWith(
      bound: bound == freezed
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as SwidType,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get bound {
    return $SwidTypeCopyWith<$Res>(_value.bound, (value) {
      return _then(_value.copyWith(bound: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidTypeArgumentElementCtorCopyWith<$Res>
    implements $SwidTypeArgumentElementCopyWith<$Res> {
  factory _$$SwidTypeArgumentElementCtorCopyWith(
          _$SwidTypeArgumentElementCtor value,
          $Res Function(_$SwidTypeArgumentElementCtor) then) =
      __$$SwidTypeArgumentElementCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidType bound});

  @override
  $SwidTypeCopyWith<$Res> get bound;
}

/// @nodoc
class __$$SwidTypeArgumentElementCtorCopyWithImpl<$Res>
    extends _$SwidTypeArgumentElementCopyWithImpl<$Res>
    implements _$$SwidTypeArgumentElementCtorCopyWith<$Res> {
  __$$SwidTypeArgumentElementCtorCopyWithImpl(
      _$SwidTypeArgumentElementCtor _value,
      $Res Function(_$SwidTypeArgumentElementCtor) _then)
      : super(_value, (v) => _then(v as _$SwidTypeArgumentElementCtor));

  @override
  _$SwidTypeArgumentElementCtor get _value =>
      super._value as _$SwidTypeArgumentElementCtor;

  @override
  $Res call({
    Object? bound = freezed,
  }) {
    return _then(_$SwidTypeArgumentElementCtor(
      bound: bound == freezed
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as SwidType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidTypeArgumentElementCtor extends _$SwidTypeArgumentElementCtor {
  _$_$SwidTypeArgumentElementCtor({required this.bound}) : super._();

  factory _$_$SwidTypeArgumentElementCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidTypeArgumentElementCtorFromJson(json);

  @override
  final SwidType bound;

  @override
  String toString() {
    return 'SwidTypeArgumentElement(bound: $bound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidTypeArgumentElementCtor &&
            (identical(other.bound, bound) ||
                const DeepCollectionEquality().equals(other.bound, bound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bound);

  @JsonKey(ignore: true)
  @override
  _$$SwidTypeArgumentElementCtorCopyWith<_$SwidTypeArgumentElementCtor>
      get copyWith => __$$SwidTypeArgumentElementCtorCopyWithImpl<
          _$SwidTypeArgumentElementCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidTypeArgumentElementCtorToJson(this);
  }
}

abstract class _$SwidTypeArgumentElementCtor extends SwidTypeArgumentElement {
  factory _$SwidTypeArgumentElementCtor({required SwidType bound}) =
      _$_$SwidTypeArgumentElementCtor;
  _$SwidTypeArgumentElementCtor._() : super._();

  factory _$SwidTypeArgumentElementCtor.fromJson(Map<String, dynamic> json) =
      _$_$SwidTypeArgumentElementCtor.fromJson;

  @override
  SwidType get bound => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidTypeArgumentElementCtorCopyWith<_$SwidTypeArgumentElementCtor>
      get copyWith => throw _privateConstructorUsedError;
}
