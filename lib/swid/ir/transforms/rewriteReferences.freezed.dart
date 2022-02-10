// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rewriteReferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RewriteReferencesTearOff {
  const _$RewriteReferencesTearOff();

  _$RewriteReferencesCtor call({required SwidType swidType}) {
    return _$RewriteReferencesCtor(
      swidType: swidType,
    );
  }
}

/// @nodoc
const $RewriteReferences = _$RewriteReferencesTearOff();

/// @nodoc
mixin _$RewriteReferences {
  SwidType get swidType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RewriteReferencesCopyWith<RewriteReferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewriteReferencesCopyWith<$Res> {
  factory $RewriteReferencesCopyWith(
          RewriteReferences value, $Res Function(RewriteReferences) then) =
      _$RewriteReferencesCopyWithImpl<$Res>;
  $Res call({SwidType swidType});

  $SwidTypeCopyWith<$Res> get swidType;
}

/// @nodoc
class _$RewriteReferencesCopyWithImpl<$Res>
    implements $RewriteReferencesCopyWith<$Res> {
  _$RewriteReferencesCopyWithImpl(this._value, this._then);

  final RewriteReferences _value;
  // ignore: unused_field
  final $Res Function(RewriteReferences) _then;

  @override
  $Res call({
    Object? swidType = freezed,
  }) {
    return _then(_value.copyWith(
      swidType: swidType == freezed
          ? _value.swidType
          : swidType // ignore: cast_nullable_to_non_nullable
              as SwidType,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get swidType {
    return $SwidTypeCopyWith<$Res>(_value.swidType, (value) {
      return _then(_value.copyWith(swidType: value));
    });
  }
}

/// @nodoc
abstract class _$$RewriteReferencesCtorCopyWith<$Res>
    implements $RewriteReferencesCopyWith<$Res> {
  factory _$$RewriteReferencesCtorCopyWith(_$RewriteReferencesCtor value,
          $Res Function(_$RewriteReferencesCtor) then) =
      __$$RewriteReferencesCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidType swidType});

  @override
  $SwidTypeCopyWith<$Res> get swidType;
}

/// @nodoc
class __$$RewriteReferencesCtorCopyWithImpl<$Res>
    extends _$RewriteReferencesCopyWithImpl<$Res>
    implements _$$RewriteReferencesCtorCopyWith<$Res> {
  __$$RewriteReferencesCtorCopyWithImpl(_$RewriteReferencesCtor _value,
      $Res Function(_$RewriteReferencesCtor) _then)
      : super(_value, (v) => _then(v as _$RewriteReferencesCtor));

  @override
  _$RewriteReferencesCtor get _value => super._value as _$RewriteReferencesCtor;

  @override
  $Res call({
    Object? swidType = freezed,
  }) {
    return _then(_$RewriteReferencesCtor(
      swidType: swidType == freezed
          ? _value.swidType
          : swidType // ignore: cast_nullable_to_non_nullable
              as SwidType,
    ));
  }
}

/// @nodoc

class _$_$RewriteReferencesCtor extends _$RewriteReferencesCtor {
  _$_$RewriteReferencesCtor({required this.swidType}) : super._();

  @override
  final SwidType swidType;

  @override
  String toString() {
    return 'RewriteReferences(swidType: $swidType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$RewriteReferencesCtor &&
            (identical(other.swidType, swidType) ||
                const DeepCollectionEquality()
                    .equals(other.swidType, swidType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidType);

  @JsonKey(ignore: true)
  @override
  _$$RewriteReferencesCtorCopyWith<_$RewriteReferencesCtor> get copyWith =>
      __$$RewriteReferencesCtorCopyWithImpl<_$RewriteReferencesCtor>(
          this, _$identity);
}

abstract class _$RewriteReferencesCtor extends RewriteReferences {
  factory _$RewriteReferencesCtor({required SwidType swidType}) =
      _$_$RewriteReferencesCtor;
  _$RewriteReferencesCtor._() : super._();

  @override
  SwidType get swidType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RewriteReferencesCtorCopyWith<_$RewriteReferencesCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
