// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiNamedParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiNamedParameterTearOff {
  const _$SwidiNamedParameterTearOff();

// ignore: unused_element
  _$SwidiNamedParameterCtor call({required SwidiDeclaration declaration}) {
    return _$SwidiNamedParameterCtor(
      declaration: declaration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiNamedParameter = _$SwidiNamedParameterTearOff();

/// @nodoc
mixin _$SwidiNamedParameter {
  SwidiDeclaration get declaration;

  @JsonKey(ignore: true)
  $SwidiNamedParameterCopyWith<SwidiNamedParameter> get copyWith;
}

/// @nodoc
abstract class $SwidiNamedParameterCopyWith<$Res> {
  factory $SwidiNamedParameterCopyWith(
          SwidiNamedParameter value, $Res Function(SwidiNamedParameter) then) =
      _$SwidiNamedParameterCopyWithImpl<$Res>;
  $Res call({SwidiDeclaration? declaration});

  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class _$SwidiNamedParameterCopyWithImpl<$Res>
    implements $SwidiNamedParameterCopyWith<$Res> {
  _$SwidiNamedParameterCopyWithImpl(this._value, this._then);

  final SwidiNamedParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiNamedParameter?) _then;

  @override
  $Res call({
    Object? declaration = freezed,
  }) {
    return _then(_value.copyWith(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration as SwidiDeclaration?,
    ));
  }

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration {
    if (_value.declaration == null) {
      return null;
    }
    return $SwidiDeclarationCopyWith<$Res>(_value.declaration, (value) {
      return _then(_value.copyWith(declaration: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiNamedParameterCtorCopyWith<$Res>
    implements $SwidiNamedParameterCopyWith<$Res> {
  factory _$$SwidiNamedParameterCtorCopyWith(_$SwidiNamedParameterCtor value,
          $Res Function(_$SwidiNamedParameterCtor) then) =
      __$$SwidiNamedParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiDeclaration? declaration});

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class __$$SwidiNamedParameterCtorCopyWithImpl<$Res>
    extends _$SwidiNamedParameterCopyWithImpl<$Res>
    implements _$$SwidiNamedParameterCtorCopyWith<$Res> {
  __$$SwidiNamedParameterCtorCopyWithImpl(_$SwidiNamedParameterCtor _value,
      $Res Function(_$SwidiNamedParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiNamedParameterCtor));

  @override
  _$SwidiNamedParameterCtor get _value =>
      super._value as _$SwidiNamedParameterCtor;

  @override
  $Res call({
    Object? declaration = freezed,
  }) {
    return _then(_$SwidiNamedParameterCtor(
      declaration: declaration == freezed
          ? _value.declaration
          : (declaration as SwidiDeclaration?)!,
    ));
  }
}

/// @nodoc
class _$_$SwidiNamedParameterCtor implements _$SwidiNamedParameterCtor {
  const _$_$SwidiNamedParameterCtor({required this.declaration})
      : assert(declaration != null);

  @override
  final SwidiDeclaration declaration;

  @override
  String toString() {
    return 'SwidiNamedParameter(declaration: $declaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiNamedParameterCtor &&
            (identical(other.declaration, declaration) ||
                const DeepCollectionEquality()
                    .equals(other.declaration, declaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(declaration);

  @JsonKey(ignore: true)
  @override
  _$$SwidiNamedParameterCtorCopyWith<_$SwidiNamedParameterCtor> get copyWith =>
      __$$SwidiNamedParameterCtorCopyWithImpl<_$SwidiNamedParameterCtor>(
          this, _$identity);
}

abstract class _$SwidiNamedParameterCtor implements SwidiNamedParameter {
  const factory _$SwidiNamedParameterCtor(
      {required SwidiDeclaration declaration}) = _$_$SwidiNamedParameterCtor;

  @override
  SwidiDeclaration get declaration;
  @override
  @JsonKey(ignore: true)
  _$$SwidiNamedParameterCtorCopyWith<_$SwidiNamedParameterCtor> get copyWith;
}
