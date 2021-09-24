// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transformEnumToTs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransformEnumToTsTearOff {
  const _$TransformEnumToTsTearOff();

  _$TransformEnumToTsCtor call({required SwidEnum swidEnum}) {
    return _$TransformEnumToTsCtor(
      swidEnum: swidEnum,
    );
  }
}

/// @nodoc
const $TransformEnumToTs = _$TransformEnumToTsTearOff();

/// @nodoc
mixin _$TransformEnumToTs {
  SwidEnum get swidEnum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransformEnumToTsCopyWith<TransformEnumToTs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransformEnumToTsCopyWith<$Res> {
  factory $TransformEnumToTsCopyWith(
          TransformEnumToTs value, $Res Function(TransformEnumToTs) then) =
      _$TransformEnumToTsCopyWithImpl<$Res>;
  $Res call({SwidEnum swidEnum});

  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class _$TransformEnumToTsCopyWithImpl<$Res>
    implements $TransformEnumToTsCopyWith<$Res> {
  _$TransformEnumToTsCopyWithImpl(this._value, this._then);

  final TransformEnumToTs _value;
  // ignore: unused_field
  final $Res Function(TransformEnumToTs) _then;

  @override
  $Res call({
    Object? swidEnum = freezed,
  }) {
    return _then(_value.copyWith(
      swidEnum: swidEnum == freezed
          ? _value.swidEnum
          : swidEnum // ignore: cast_nullable_to_non_nullable
              as SwidEnum,
    ));
  }

  @override
  $SwidEnumCopyWith<$Res> get swidEnum {
    return $SwidEnumCopyWith<$Res>(_value.swidEnum, (value) {
      return _then(_value.copyWith(swidEnum: value));
    });
  }
}

/// @nodoc
abstract class _$$TransformEnumToTsCtorCopyWith<$Res>
    implements $TransformEnumToTsCopyWith<$Res> {
  factory _$$TransformEnumToTsCtorCopyWith(_$TransformEnumToTsCtor value,
          $Res Function(_$TransformEnumToTsCtor) then) =
      __$$TransformEnumToTsCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidEnum swidEnum});

  @override
  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class __$$TransformEnumToTsCtorCopyWithImpl<$Res>
    extends _$TransformEnumToTsCopyWithImpl<$Res>
    implements _$$TransformEnumToTsCtorCopyWith<$Res> {
  __$$TransformEnumToTsCtorCopyWithImpl(_$TransformEnumToTsCtor _value,
      $Res Function(_$TransformEnumToTsCtor) _then)
      : super(_value, (v) => _then(v as _$TransformEnumToTsCtor));

  @override
  _$TransformEnumToTsCtor get _value => super._value as _$TransformEnumToTsCtor;

  @override
  $Res call({
    Object? swidEnum = freezed,
  }) {
    return _then(_$TransformEnumToTsCtor(
      swidEnum: swidEnum == freezed
          ? _value.swidEnum
          : swidEnum // ignore: cast_nullable_to_non_nullable
              as SwidEnum,
    ));
  }
}

/// @nodoc

class _$_$TransformEnumToTsCtor extends _$TransformEnumToTsCtor {
  _$_$TransformEnumToTsCtor({required this.swidEnum}) : super._();

  @override
  final SwidEnum swidEnum;

  @override
  String toString() {
    return 'TransformEnumToTs(swidEnum: $swidEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$TransformEnumToTsCtor &&
            (identical(other.swidEnum, swidEnum) ||
                const DeepCollectionEquality()
                    .equals(other.swidEnum, swidEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidEnum);

  @JsonKey(ignore: true)
  @override
  _$$TransformEnumToTsCtorCopyWith<_$TransformEnumToTsCtor> get copyWith =>
      __$$TransformEnumToTsCtorCopyWithImpl<_$TransformEnumToTsCtor>(
          this, _$identity);
}

abstract class _$TransformEnumToTsCtor extends TransformEnumToTs {
  factory _$TransformEnumToTsCtor({required SwidEnum swidEnum}) =
      _$_$TransformEnumToTsCtor;
  _$TransformEnumToTsCtor._() : super._();

  @override
  SwidEnum get swidEnum => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TransformEnumToTsCtorCopyWith<_$TransformEnumToTsCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
