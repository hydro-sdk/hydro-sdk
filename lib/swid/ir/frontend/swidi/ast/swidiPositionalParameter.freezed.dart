// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidiPositionalParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SwidiPositionalParameterTearOff {
  const _$SwidiPositionalParameterTearOff();

// ignore: unused_element
  _$SwidiPositionalParameterCtor call(
      {@required SwidiDeclaration declaration}) {
    return _$SwidiPositionalParameterCtor(
      declaration: declaration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SwidiPositionalParameter = _$SwidiPositionalParameterTearOff();

/// @nodoc
mixin _$SwidiPositionalParameter {
  SwidiDeclaration get declaration;

  $SwidiPositionalParameterCopyWith<SwidiPositionalParameter> get copyWith;
}

/// @nodoc
abstract class $SwidiPositionalParameterCopyWith<$Res> {
  factory $SwidiPositionalParameterCopyWith(SwidiPositionalParameter value,
          $Res Function(SwidiPositionalParameter) then) =
      _$SwidiPositionalParameterCopyWithImpl<$Res>;
  $Res call({SwidiDeclaration declaration});

  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class _$SwidiPositionalParameterCopyWithImpl<$Res>
    implements $SwidiPositionalParameterCopyWith<$Res> {
  _$SwidiPositionalParameterCopyWithImpl(this._value, this._then);

  final SwidiPositionalParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiPositionalParameter) _then;

  @override
  $Res call({
    Object declaration = freezed,
  }) {
    return _then(_value.copyWith(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration as SwidiDeclaration,
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
abstract class _$$SwidiPositionalParameterCtorCopyWith<$Res>
    implements $SwidiPositionalParameterCopyWith<$Res> {
  factory _$$SwidiPositionalParameterCtorCopyWith(
          _$SwidiPositionalParameterCtor value,
          $Res Function(_$SwidiPositionalParameterCtor) then) =
      __$$SwidiPositionalParameterCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidiDeclaration declaration});

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class __$$SwidiPositionalParameterCtorCopyWithImpl<$Res>
    extends _$SwidiPositionalParameterCopyWithImpl<$Res>
    implements _$$SwidiPositionalParameterCtorCopyWith<$Res> {
  __$$SwidiPositionalParameterCtorCopyWithImpl(
      _$SwidiPositionalParameterCtor _value,
      $Res Function(_$SwidiPositionalParameterCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiPositionalParameterCtor));

  @override
  _$SwidiPositionalParameterCtor get _value =>
      super._value as _$SwidiPositionalParameterCtor;

  @override
  $Res call({
    Object declaration = freezed,
  }) {
    return _then(_$SwidiPositionalParameterCtor(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration as SwidiDeclaration,
    ));
  }
}

/// @nodoc
class _$_$SwidiPositionalParameterCtor
    implements _$SwidiPositionalParameterCtor {
  const _$_$SwidiPositionalParameterCtor({@required this.declaration})
      : assert(declaration != null);

  @override
  final SwidiDeclaration declaration;

  @override
  String toString() {
    return 'SwidiPositionalParameter(declaration: $declaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiPositionalParameterCtor &&
            (identical(other.declaration, declaration) ||
                const DeepCollectionEquality()
                    .equals(other.declaration, declaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(declaration);

  @override
  _$$SwidiPositionalParameterCtorCopyWith<_$SwidiPositionalParameterCtor>
      get copyWith => __$$SwidiPositionalParameterCtorCopyWithImpl<
          _$SwidiPositionalParameterCtor>(this, _$identity);
}

abstract class _$SwidiPositionalParameterCtor
    implements SwidiPositionalParameter {
  const factory _$SwidiPositionalParameterCtor(
          {@required SwidiDeclaration declaration}) =
      _$_$SwidiPositionalParameterCtor;

  @override
  SwidiDeclaration get declaration;
  @override
  _$$SwidiPositionalParameterCtorCopyWith<_$SwidiPositionalParameterCtor>
      get copyWith;
}
