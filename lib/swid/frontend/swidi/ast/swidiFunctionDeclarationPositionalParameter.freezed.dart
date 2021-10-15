// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiFunctionDeclarationPositionalParameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiFunctionDeclarationPositionalParameterTearOff {
  const _$SwidiFunctionDeclarationPositionalParameterTearOff();

  _$SwidiPositionalParameterCtor call({required SwidiDeclaration declaration}) {
    return _$SwidiPositionalParameterCtor(
      declaration: declaration,
    );
  }
}

/// @nodoc
const $SwidiFunctionDeclarationPositionalParameter =
    _$SwidiFunctionDeclarationPositionalParameterTearOff();

/// @nodoc
mixin _$SwidiFunctionDeclarationPositionalParameter {
  SwidiDeclaration get declaration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiFunctionDeclarationPositionalParameterCopyWith<
          SwidiFunctionDeclarationPositionalParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiFunctionDeclarationPositionalParameterCopyWith<$Res> {
  factory $SwidiFunctionDeclarationPositionalParameterCopyWith(
          SwidiFunctionDeclarationPositionalParameter value,
          $Res Function(SwidiFunctionDeclarationPositionalParameter) then) =
      _$SwidiFunctionDeclarationPositionalParameterCopyWithImpl<$Res>;
  $Res call({SwidiDeclaration declaration});

  $SwidiDeclarationCopyWith<$Res> get declaration;
}

/// @nodoc
class _$SwidiFunctionDeclarationPositionalParameterCopyWithImpl<$Res>
    implements $SwidiFunctionDeclarationPositionalParameterCopyWith<$Res> {
  _$SwidiFunctionDeclarationPositionalParameterCopyWithImpl(
      this._value, this._then);

  final SwidiFunctionDeclarationPositionalParameter _value;
  // ignore: unused_field
  final $Res Function(SwidiFunctionDeclarationPositionalParameter) _then;

  @override
  $Res call({
    Object? declaration = freezed,
  }) {
    return _then(_value.copyWith(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration // ignore: cast_nullable_to_non_nullable
              as SwidiDeclaration,
    ));
  }

  @override
  $SwidiDeclarationCopyWith<$Res> get declaration {
    return $SwidiDeclarationCopyWith<$Res>(_value.declaration, (value) {
      return _then(_value.copyWith(declaration: value));
    });
  }
}

/// @nodoc
abstract class _$$SwidiPositionalParameterCtorCopyWith<$Res>
    implements $SwidiFunctionDeclarationPositionalParameterCopyWith<$Res> {
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
    extends _$SwidiFunctionDeclarationPositionalParameterCopyWithImpl<$Res>
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
    Object? declaration = freezed,
  }) {
    return _then(_$SwidiPositionalParameterCtor(
      declaration: declaration == freezed
          ? _value.declaration
          : declaration // ignore: cast_nullable_to_non_nullable
              as SwidiDeclaration,
    ));
  }
}

/// @nodoc

class _$_$SwidiPositionalParameterCtor extends _$SwidiPositionalParameterCtor {
  _$_$SwidiPositionalParameterCtor({required this.declaration}) : super._();

  @override
  final SwidiDeclaration declaration;

  @override
  String toString() {
    return 'SwidiFunctionDeclarationPositionalParameter(declaration: $declaration)';
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

  @JsonKey(ignore: true)
  @override
  _$$SwidiPositionalParameterCtorCopyWith<_$SwidiPositionalParameterCtor>
      get copyWith => __$$SwidiPositionalParameterCtorCopyWithImpl<
          _$SwidiPositionalParameterCtor>(this, _$identity);
}

abstract class _$SwidiPositionalParameterCtor
    extends SwidiFunctionDeclarationPositionalParameter {
  factory _$SwidiPositionalParameterCtor(
          {required SwidiDeclaration declaration}) =
      _$_$SwidiPositionalParameterCtor;
  _$SwidiPositionalParameterCtor._() : super._();

  @override
  SwidiDeclaration get declaration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiPositionalParameterCtorCopyWith<_$SwidiPositionalParameterCtor>
      get copyWith => throw _privateConstructorUsedError;
}
