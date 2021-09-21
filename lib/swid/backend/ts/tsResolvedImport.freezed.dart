// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tsResolvedImport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TsResolvedImportTearOff {
  const _$TsResolvedImportTearOff();

  _$TsResolvedImportCtor call(
      {required List<String> symbols, required String path}) {
    return _$TsResolvedImportCtor(
      symbols: symbols,
      path: path,
    );
  }
}

/// @nodoc
const $TsResolvedImport = _$TsResolvedImportTearOff();

/// @nodoc
mixin _$TsResolvedImport {
  List<String> get symbols => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TsResolvedImportCopyWith<TsResolvedImport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TsResolvedImportCopyWith<$Res> {
  factory $TsResolvedImportCopyWith(
          TsResolvedImport value, $Res Function(TsResolvedImport) then) =
      _$TsResolvedImportCopyWithImpl<$Res>;
  $Res call({List<String> symbols, String path});
}

/// @nodoc
class _$TsResolvedImportCopyWithImpl<$Res>
    implements $TsResolvedImportCopyWith<$Res> {
  _$TsResolvedImportCopyWithImpl(this._value, this._then);

  final TsResolvedImport _value;
  // ignore: unused_field
  final $Res Function(TsResolvedImport) _then;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$TsResolvedImportCtorCopyWith<$Res>
    implements $TsResolvedImportCopyWith<$Res> {
  factory _$$TsResolvedImportCtorCopyWith(_$TsResolvedImportCtor value,
          $Res Function(_$TsResolvedImportCtor) then) =
      __$$TsResolvedImportCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<String> symbols, String path});
}

/// @nodoc
class __$$TsResolvedImportCtorCopyWithImpl<$Res>
    extends _$TsResolvedImportCopyWithImpl<$Res>
    implements _$$TsResolvedImportCtorCopyWith<$Res> {
  __$$TsResolvedImportCtorCopyWithImpl(_$TsResolvedImportCtor _value,
      $Res Function(_$TsResolvedImportCtor) _then)
      : super(_value, (v) => _then(v as _$TsResolvedImportCtor));

  @override
  _$TsResolvedImportCtor get _value => super._value as _$TsResolvedImportCtor;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? path = freezed,
  }) {
    return _then(_$TsResolvedImportCtor(
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$TsResolvedImportCtor extends _$TsResolvedImportCtor {
  _$_$TsResolvedImportCtor({required this.symbols, required this.path})
      : super._();

  @override
  final List<String> symbols;
  @override
  final String path;

  @override
  String toString() {
    return 'TsResolvedImport(symbols: $symbols, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$TsResolvedImportCtor &&
            (identical(other.symbols, symbols) ||
                const DeepCollectionEquality()
                    .equals(other.symbols, symbols)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symbols) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$$TsResolvedImportCtorCopyWith<_$TsResolvedImportCtor> get copyWith =>
      __$$TsResolvedImportCtorCopyWithImpl<_$TsResolvedImportCtor>(
          this, _$identity);
}

abstract class _$TsResolvedImportCtor extends TsResolvedImport {
  factory _$TsResolvedImportCtor(
      {required List<String> symbols,
      required String path}) = _$_$TsResolvedImportCtor;
  _$TsResolvedImportCtor._() : super._();

  @override
  List<String> get symbols => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TsResolvedImportCtorCopyWith<_$TsResolvedImportCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
