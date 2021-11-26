// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'applySuperTypes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplySuperTypesTearOff {
  const _$ApplySuperTypesTearOff();

  _$ApplySuperTypesCtor call({required SwidClass swidClass}) {
    return _$ApplySuperTypesCtor(
      swidClass: swidClass,
    );
  }
}

/// @nodoc
const $ApplySuperTypes = _$ApplySuperTypesTearOff();

/// @nodoc
mixin _$ApplySuperTypes {
  SwidClass get swidClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplySuperTypesCopyWith<ApplySuperTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplySuperTypesCopyWith<$Res> {
  factory $ApplySuperTypesCopyWith(
          ApplySuperTypes value, $Res Function(ApplySuperTypes) then) =
      _$ApplySuperTypesCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class _$ApplySuperTypesCopyWithImpl<$Res>
    implements $ApplySuperTypesCopyWith<$Res> {
  _$ApplySuperTypesCopyWithImpl(this._value, this._then);

  final ApplySuperTypes _value;
  // ignore: unused_field
  final $Res Function(ApplySuperTypes) _then;

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
abstract class _$$ApplySuperTypesCtorCopyWith<$Res>
    implements $ApplySuperTypesCopyWith<$Res> {
  factory _$$ApplySuperTypesCtorCopyWith(_$ApplySuperTypesCtor value,
          $Res Function(_$ApplySuperTypesCtor) then) =
      __$$ApplySuperTypesCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidClass swidClass});

  @override
  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$ApplySuperTypesCtorCopyWithImpl<$Res>
    extends _$ApplySuperTypesCopyWithImpl<$Res>
    implements _$$ApplySuperTypesCtorCopyWith<$Res> {
  __$$ApplySuperTypesCtorCopyWithImpl(
      _$ApplySuperTypesCtor _value, $Res Function(_$ApplySuperTypesCtor) _then)
      : super(_value, (v) => _then(v as _$ApplySuperTypesCtor));

  @override
  _$ApplySuperTypesCtor get _value => super._value as _$ApplySuperTypesCtor;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_$ApplySuperTypesCtor(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }
}

/// @nodoc

class _$_$ApplySuperTypesCtor extends _$ApplySuperTypesCtor {
  _$_$ApplySuperTypesCtor({required this.swidClass}) : super._();

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'ApplySuperTypes(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ApplySuperTypesCtor &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @JsonKey(ignore: true)
  @override
  _$$ApplySuperTypesCtorCopyWith<_$ApplySuperTypesCtor> get copyWith =>
      __$$ApplySuperTypesCtorCopyWithImpl<_$ApplySuperTypesCtor>(
          this, _$identity);
}

abstract class _$ApplySuperTypesCtor extends ApplySuperTypes {
  factory _$ApplySuperTypesCtor({required SwidClass swidClass}) =
      _$_$ApplySuperTypesCtor;
  _$ApplySuperTypesCtor._() : super._();

  @override
  SwidClass get swidClass => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ApplySuperTypesCtorCopyWith<_$ApplySuperTypesCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
