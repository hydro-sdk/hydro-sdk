// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'applyMixins.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplyMixinsTearOff {
  const _$ApplyMixinsTearOff();

  _$ApplyMixinsCtor call({required SwidClass swidClass}) {
    return _$ApplyMixinsCtor(
      swidClass: swidClass,
    );
  }
}

/// @nodoc
const $ApplyMixins = _$ApplyMixinsTearOff();

/// @nodoc
mixin _$ApplyMixins {
  SwidClass get swidClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyMixinsCopyWith<ApplyMixins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyMixinsCopyWith<$Res> {
  factory $ApplyMixinsCopyWith(
          ApplyMixins value, $Res Function(ApplyMixins) then) =
      _$ApplyMixinsCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class _$ApplyMixinsCopyWithImpl<$Res> implements $ApplyMixinsCopyWith<$Res> {
  _$ApplyMixinsCopyWithImpl(this._value, this._then);

  final ApplyMixins _value;
  // ignore: unused_field
  final $Res Function(ApplyMixins) _then;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_value.copyWith(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }

  @override
  $SwidClassCopyWith<$Res> get swidClass {
    return $SwidClassCopyWith<$Res>(_value.swidClass, (value) {
      return _then(_value.copyWith(swidClass: value));
    });
  }
}

/// @nodoc
abstract class _$$ApplyMixinsCtorCopyWith<$Res>
    implements $ApplyMixinsCopyWith<$Res> {
  factory _$$ApplyMixinsCtorCopyWith(
          _$ApplyMixinsCtor value, $Res Function(_$ApplyMixinsCtor) then) =
      __$$ApplyMixinsCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidClass swidClass});

  @override
  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$ApplyMixinsCtorCopyWithImpl<$Res>
    extends _$ApplyMixinsCopyWithImpl<$Res>
    implements _$$ApplyMixinsCtorCopyWith<$Res> {
  __$$ApplyMixinsCtorCopyWithImpl(
      _$ApplyMixinsCtor _value, $Res Function(_$ApplyMixinsCtor) _then)
      : super(_value, (v) => _then(v as _$ApplyMixinsCtor));

  @override
  _$ApplyMixinsCtor get _value => super._value as _$ApplyMixinsCtor;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_$ApplyMixinsCtor(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }
}

/// @nodoc

class _$_$ApplyMixinsCtor extends _$ApplyMixinsCtor {
  _$_$ApplyMixinsCtor({required this.swidClass}) : super._();

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'ApplyMixins(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ApplyMixinsCtor &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @JsonKey(ignore: true)
  @override
  _$$ApplyMixinsCtorCopyWith<_$ApplyMixinsCtor> get copyWith =>
      __$$ApplyMixinsCtorCopyWithImpl<_$ApplyMixinsCtor>(this, _$identity);
}

abstract class _$ApplyMixinsCtor extends ApplyMixins {
  factory _$ApplyMixinsCtor({required SwidClass swidClass}) =
      _$_$ApplyMixinsCtor;
  _$ApplyMixinsCtor._() : super._();

  @override
  SwidClass get swidClass => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ApplyMixinsCtorCopyWith<_$ApplyMixinsCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
