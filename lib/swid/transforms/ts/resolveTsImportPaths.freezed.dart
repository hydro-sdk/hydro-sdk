// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'resolveTsImportPaths.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResolveTsImportPathsTearOff {
  const _$ResolveTsImportPathsTearOff();

  _$ResolveTsImportPathsCtor call(
      {required SwidType importee,
      required SwidType importer,
      List<String> prefixPaths = const []}) {
    return _$ResolveTsImportPathsCtor(
      importee: importee,
      importer: importer,
      prefixPaths: prefixPaths,
    );
  }
}

/// @nodoc
const $ResolveTsImportPaths = _$ResolveTsImportPathsTearOff();

/// @nodoc
mixin _$ResolveTsImportPaths {
  SwidType get importee => throw _privateConstructorUsedError;
  SwidType get importer => throw _privateConstructorUsedError;
  List<String> get prefixPaths => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResolveTsImportPathsCopyWith<ResolveTsImportPaths> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResolveTsImportPathsCopyWith<$Res> {
  factory $ResolveTsImportPathsCopyWith(ResolveTsImportPaths value,
          $Res Function(ResolveTsImportPaths) then) =
      _$ResolveTsImportPathsCopyWithImpl<$Res>;
  $Res call({SwidType importee, SwidType importer, List<String> prefixPaths});

  $SwidTypeCopyWith<$Res> get importee;
  $SwidTypeCopyWith<$Res> get importer;
}

/// @nodoc
class _$ResolveTsImportPathsCopyWithImpl<$Res>
    implements $ResolveTsImportPathsCopyWith<$Res> {
  _$ResolveTsImportPathsCopyWithImpl(this._value, this._then);

  final ResolveTsImportPaths _value;
  // ignore: unused_field
  final $Res Function(ResolveTsImportPaths) _then;

  @override
  $Res call({
    Object? importee = freezed,
    Object? importer = freezed,
    Object? prefixPaths = freezed,
  }) {
    return _then(_value.copyWith(
      importee: importee == freezed
          ? _value.importee
          : importee // ignore: cast_nullable_to_non_nullable
              as SwidType,
      importer: importer == freezed
          ? _value.importer
          : importer // ignore: cast_nullable_to_non_nullable
              as SwidType,
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res> get importee {
    return $SwidTypeCopyWith<$Res>(_value.importee, (value) {
      return _then(_value.copyWith(importee: value));
    });
  }

  @override
  $SwidTypeCopyWith<$Res> get importer {
    return $SwidTypeCopyWith<$Res>(_value.importer, (value) {
      return _then(_value.copyWith(importer: value));
    });
  }
}

/// @nodoc
abstract class _$$ResolveTsImportPathsCtorCopyWith<$Res>
    implements $ResolveTsImportPathsCopyWith<$Res> {
  factory _$$ResolveTsImportPathsCtorCopyWith(_$ResolveTsImportPathsCtor value,
          $Res Function(_$ResolveTsImportPathsCtor) then) =
      __$$ResolveTsImportPathsCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidType importee, SwidType importer, List<String> prefixPaths});

  @override
  $SwidTypeCopyWith<$Res> get importee;
  @override
  $SwidTypeCopyWith<$Res> get importer;
}

/// @nodoc
class __$$ResolveTsImportPathsCtorCopyWithImpl<$Res>
    extends _$ResolveTsImportPathsCopyWithImpl<$Res>
    implements _$$ResolveTsImportPathsCtorCopyWith<$Res> {
  __$$ResolveTsImportPathsCtorCopyWithImpl(_$ResolveTsImportPathsCtor _value,
      $Res Function(_$ResolveTsImportPathsCtor) _then)
      : super(_value, (v) => _then(v as _$ResolveTsImportPathsCtor));

  @override
  _$ResolveTsImportPathsCtor get _value =>
      super._value as _$ResolveTsImportPathsCtor;

  @override
  $Res call({
    Object? importee = freezed,
    Object? importer = freezed,
    Object? prefixPaths = freezed,
  }) {
    return _then(_$ResolveTsImportPathsCtor(
      importee: importee == freezed
          ? _value.importee
          : importee // ignore: cast_nullable_to_non_nullable
              as SwidType,
      importer: importer == freezed
          ? _value.importer
          : importer // ignore: cast_nullable_to_non_nullable
              as SwidType,
      prefixPaths: prefixPaths == freezed
          ? _value.prefixPaths
          : prefixPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_$ResolveTsImportPathsCtor extends _$ResolveTsImportPathsCtor {
  _$_$ResolveTsImportPathsCtor(
      {required this.importee,
      required this.importer,
      this.prefixPaths = const []})
      : super._();

  @override
  final SwidType importee;
  @override
  final SwidType importer;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> prefixPaths;

  @override
  String toString() {
    return 'ResolveTsImportPaths(importee: $importee, importer: $importer, prefixPaths: $prefixPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ResolveTsImportPathsCtor &&
            (identical(other.importee, importee) ||
                const DeepCollectionEquality()
                    .equals(other.importee, importee)) &&
            (identical(other.importer, importer) ||
                const DeepCollectionEquality()
                    .equals(other.importer, importer)) &&
            (identical(other.prefixPaths, prefixPaths) ||
                const DeepCollectionEquality()
                    .equals(other.prefixPaths, prefixPaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(importee) ^
      const DeepCollectionEquality().hash(importer) ^
      const DeepCollectionEquality().hash(prefixPaths);

  @JsonKey(ignore: true)
  @override
  _$$ResolveTsImportPathsCtorCopyWith<_$ResolveTsImportPathsCtor>
      get copyWith =>
          __$$ResolveTsImportPathsCtorCopyWithImpl<_$ResolveTsImportPathsCtor>(
              this, _$identity);
}

abstract class _$ResolveTsImportPathsCtor extends ResolveTsImportPaths {
  factory _$ResolveTsImportPathsCtor(
      {required SwidType importee,
      required SwidType importer,
      List<String> prefixPaths}) = _$_$ResolveTsImportPathsCtor;
  _$ResolveTsImportPathsCtor._() : super._();

  @override
  SwidType get importee => throw _privateConstructorUsedError;
  @override
  SwidType get importer => throw _privateConstructorUsedError;
  @override
  List<String> get prefixPaths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ResolveTsImportPathsCtorCopyWith<_$ResolveTsImportPathsCtor>
      get copyWith => throw _privateConstructorUsedError;
}
