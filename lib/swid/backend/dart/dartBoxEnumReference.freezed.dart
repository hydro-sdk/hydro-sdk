// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dartBoxEnumReference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DartBoxEnumReferenceTearOff {
  const _$DartBoxEnumReferenceTearOff();

  _$DartBoxEnumReferenceCtor call(
      {required SwidType? type,
      required String referenceName,
      CodeKind codeKind = CodeKind.statement}) {
    return _$DartBoxEnumReferenceCtor(
      type: type,
      referenceName: referenceName,
      codeKind: codeKind,
    );
  }
}

/// @nodoc
const $DartBoxEnumReference = _$DartBoxEnumReferenceTearOff();

/// @nodoc
mixin _$DartBoxEnumReference {
  SwidType? get type => throw _privateConstructorUsedError;
  String get referenceName => throw _privateConstructorUsedError;
  CodeKind get codeKind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartBoxEnumReferenceCopyWith<DartBoxEnumReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartBoxEnumReferenceCopyWith<$Res> {
  factory $DartBoxEnumReferenceCopyWith(DartBoxEnumReference value,
          $Res Function(DartBoxEnumReference) then) =
      _$DartBoxEnumReferenceCopyWithImpl<$Res>;
  $Res call({SwidType? type, String referenceName, CodeKind codeKind});

  $SwidTypeCopyWith<$Res>? get type;
}

/// @nodoc
class _$DartBoxEnumReferenceCopyWithImpl<$Res>
    implements $DartBoxEnumReferenceCopyWith<$Res> {
  _$DartBoxEnumReferenceCopyWithImpl(this._value, this._then);

  final DartBoxEnumReference _value;
  // ignore: unused_field
  final $Res Function(DartBoxEnumReference) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? referenceName = freezed,
    Object? codeKind = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidType?,
      referenceName: referenceName == freezed
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
      codeKind: codeKind == freezed
          ? _value.codeKind
          : codeKind // ignore: cast_nullable_to_non_nullable
              as CodeKind,
    ));
  }

  @override
  $SwidTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $SwidTypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$DartBoxEnumReferenceCtorCopyWith<$Res>
    implements $DartBoxEnumReferenceCopyWith<$Res> {
  factory _$$DartBoxEnumReferenceCtorCopyWith(_$DartBoxEnumReferenceCtor value,
          $Res Function(_$DartBoxEnumReferenceCtor) then) =
      __$$DartBoxEnumReferenceCtorCopyWithImpl<$Res>;
  @override
  $Res call({SwidType? type, String referenceName, CodeKind codeKind});

  @override
  $SwidTypeCopyWith<$Res>? get type;
}

/// @nodoc
class __$$DartBoxEnumReferenceCtorCopyWithImpl<$Res>
    extends _$DartBoxEnumReferenceCopyWithImpl<$Res>
    implements _$$DartBoxEnumReferenceCtorCopyWith<$Res> {
  __$$DartBoxEnumReferenceCtorCopyWithImpl(_$DartBoxEnumReferenceCtor _value,
      $Res Function(_$DartBoxEnumReferenceCtor) _then)
      : super(_value, (v) => _then(v as _$DartBoxEnumReferenceCtor));

  @override
  _$DartBoxEnumReferenceCtor get _value =>
      super._value as _$DartBoxEnumReferenceCtor;

  @override
  $Res call({
    Object? type = freezed,
    Object? referenceName = freezed,
    Object? codeKind = freezed,
  }) {
    return _then(_$DartBoxEnumReferenceCtor(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SwidType?,
      referenceName: referenceName == freezed
          ? _value.referenceName
          : referenceName // ignore: cast_nullable_to_non_nullable
              as String,
      codeKind: codeKind == freezed
          ? _value.codeKind
          : codeKind // ignore: cast_nullable_to_non_nullable
              as CodeKind,
    ));
  }
}

/// @nodoc

class _$_$DartBoxEnumReferenceCtor extends _$DartBoxEnumReferenceCtor {
  _$_$DartBoxEnumReferenceCtor(
      {required this.type,
      required this.referenceName,
      this.codeKind = CodeKind.statement})
      : super._();

  @override
  final SwidType? type;
  @override
  final String referenceName;
  @JsonKey(defaultValue: CodeKind.statement)
  @override
  final CodeKind codeKind;

  @override
  String toString() {
    return 'DartBoxEnumReference(type: $type, referenceName: $referenceName, codeKind: $codeKind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$DartBoxEnumReferenceCtor &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.referenceName, referenceName) ||
                const DeepCollectionEquality()
                    .equals(other.referenceName, referenceName)) &&
            (identical(other.codeKind, codeKind) ||
                const DeepCollectionEquality()
                    .equals(other.codeKind, codeKind)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(referenceName) ^
      const DeepCollectionEquality().hash(codeKind);

  @JsonKey(ignore: true)
  @override
  _$$DartBoxEnumReferenceCtorCopyWith<_$DartBoxEnumReferenceCtor>
      get copyWith =>
          __$$DartBoxEnumReferenceCtorCopyWithImpl<_$DartBoxEnumReferenceCtor>(
              this, _$identity);
}

abstract class _$DartBoxEnumReferenceCtor extends DartBoxEnumReference {
  factory _$DartBoxEnumReferenceCtor(
      {required SwidType? type,
      required String referenceName,
      CodeKind codeKind}) = _$_$DartBoxEnumReferenceCtor;
  _$DartBoxEnumReferenceCtor._() : super._();

  @override
  SwidType? get type => throw _privateConstructorUsedError;
  @override
  String get referenceName => throw _privateConstructorUsedError;
  @override
  CodeKind get codeKind => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DartBoxEnumReferenceCtorCopyWith<_$DartBoxEnumReferenceCtor>
      get copyWith => throw _privateConstructorUsedError;
}
