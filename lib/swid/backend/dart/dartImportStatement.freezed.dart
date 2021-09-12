// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dartImportStatement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartImportStatementTearOff {
  const _$DartImportStatementTearOff();

  _$DartImportStatementCtor call({required String path}) {
    return _$DartImportStatementCtor(
      path: path,
    );
  }
}

/// @nodoc
const $DartImportStatement = _$DartImportStatementTearOff();

/// @nodoc
mixin _$DartImportStatement {
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartImportStatementCopyWith<DartImportStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartImportStatementCopyWith<$Res> {
  factory $DartImportStatementCopyWith(
          DartImportStatement value, $Res Function(DartImportStatement) then) =
      _$DartImportStatementCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$DartImportStatementCopyWithImpl<$Res>
    implements $DartImportStatementCopyWith<$Res> {
  _$DartImportStatementCopyWithImpl(this._value, this._then);

  final DartImportStatement _value;
  // ignore: unused_field
  final $Res Function(DartImportStatement) _then;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DartImportStatementCtorCopyWith<$Res>
    implements $DartImportStatementCopyWith<$Res> {
  factory _$$DartImportStatementCtorCopyWith(_$DartImportStatementCtor value,
          $Res Function(_$DartImportStatementCtor) then) =
      __$$DartImportStatementCtorCopyWithImpl<$Res>;
  @override
  $Res call({String path});
}

/// @nodoc
class __$$DartImportStatementCtorCopyWithImpl<$Res>
    extends _$DartImportStatementCopyWithImpl<$Res>
    implements _$$DartImportStatementCtorCopyWith<$Res> {
  __$$DartImportStatementCtorCopyWithImpl(_$DartImportStatementCtor _value,
      $Res Function(_$DartImportStatementCtor) _then)
      : super(_value, (v) => _then(v as _$DartImportStatementCtor));

  @override
  _$DartImportStatementCtor get _value =>
      super._value as _$DartImportStatementCtor;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$DartImportStatementCtor(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$DartImportStatementCtor extends _$DartImportStatementCtor {
  _$_$DartImportStatementCtor({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'DartImportStatement(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$DartImportStatementCtor &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$$DartImportStatementCtorCopyWith<_$DartImportStatementCtor> get copyWith =>
      __$$DartImportStatementCtorCopyWithImpl<_$DartImportStatementCtor>(
          this, _$identity);
}

abstract class _$DartImportStatementCtor extends DartImportStatement {
  factory _$DartImportStatementCtor({required String path}) =
      _$_$DartImportStatementCtor;
  _$DartImportStatementCtor._() : super._();

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DartImportStatementCtorCopyWith<_$DartImportStatementCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
