// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'applyInterfaces.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplyInterfacesTearOff {
  const _$ApplyInterfacesTearOff();

  _$ApplyInterfacesCtor call({required SwidClass swidClass}) {
    return _$ApplyInterfacesCtor(
      swidClass: swidClass,
    );
  }
}

/// @nodoc
const $ApplyInterfaces = _$ApplyInterfacesTearOff();

/// @nodoc
mixin _$ApplyInterfaces {
  SwidClass get swidClass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplyInterfacesCopyWith<ApplyInterfaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyInterfacesCopyWith<$Res> {
  factory $ApplyInterfacesCopyWith(
          ApplyInterfaces value, $Res Function(ApplyInterfaces) then) =
      _$ApplyInterfacesCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class _$ApplyInterfacesCopyWithImpl<$Res>
    implements $ApplyInterfacesCopyWith<$Res> {
  _$ApplyInterfacesCopyWithImpl(this._value, this._then);

  final ApplyInterfaces _value;
  // ignore: unused_field
  final $Res Function(ApplyInterfaces) _then;

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
abstract class _$$ApplyInterfacesCtorCopyWith<$Res>
    implements $ApplyInterfacesCopyWith<$Res> {
  factory _$$ApplyInterfacesCtorCopyWith(_$ApplyInterfacesCtor value,
          $Res Function(_$ApplyInterfacesCtor) then) =
      __$$ApplyInterfacesCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidClass swidClass});

  @override
  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$ApplyInterfacesCtorCopyWithImpl<$Res>
    extends _$ApplyInterfacesCopyWithImpl<$Res>
    implements _$$ApplyInterfacesCtorCopyWith<$Res> {
  __$$ApplyInterfacesCtorCopyWithImpl(
      _$ApplyInterfacesCtor _value, $Res Function(_$ApplyInterfacesCtor) _then)
      : super(_value, (v) => _then(v as _$ApplyInterfacesCtor));

  @override
  _$ApplyInterfacesCtor get _value => super._value as _$ApplyInterfacesCtor;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_$ApplyInterfacesCtor(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }
}

/// @nodoc

class _$_$ApplyInterfacesCtor extends _$ApplyInterfacesCtor {
  _$_$ApplyInterfacesCtor({required this.swidClass}) : super._();

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'ApplyInterfaces(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ApplyInterfacesCtor &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @JsonKey(ignore: true)
  @override
  _$$ApplyInterfacesCtorCopyWith<_$ApplyInterfacesCtor> get copyWith =>
      __$$ApplyInterfacesCtorCopyWithImpl<_$ApplyInterfacesCtor>(
          this, _$identity);
}

abstract class _$ApplyInterfacesCtor extends ApplyInterfaces {
  factory _$ApplyInterfacesCtor({required SwidClass swidClass}) =
      _$_$ApplyInterfacesCtor;
  _$ApplyInterfacesCtor._() : super._();

  @override
  SwidClass get swidClass => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ApplyInterfacesCtorCopyWith<_$ApplyInterfacesCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
