// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidiAnnotationList.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwidiAnnotationListTearOff {
  const _$SwidiAnnotationListTearOff();

  _$SwidiAnnotationListCtor call(
      {required List<SwidiAnnotation> annotationList}) {
    return _$SwidiAnnotationListCtor(
      annotationList: annotationList,
    );
  }
}

/// @nodoc
const $SwidiAnnotationList = _$SwidiAnnotationListTearOff();

/// @nodoc
mixin _$SwidiAnnotationList {
  List<SwidiAnnotation> get annotationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwidiAnnotationListCopyWith<SwidiAnnotationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidiAnnotationListCopyWith<$Res> {
  factory $SwidiAnnotationListCopyWith(
          SwidiAnnotationList value, $Res Function(SwidiAnnotationList) then) =
      _$SwidiAnnotationListCopyWithImpl<$Res>;
  $Res call({List<SwidiAnnotation> annotationList});
}

/// @nodoc
class _$SwidiAnnotationListCopyWithImpl<$Res>
    implements $SwidiAnnotationListCopyWith<$Res> {
  _$SwidiAnnotationListCopyWithImpl(this._value, this._then);

  final SwidiAnnotationList _value;
  // ignore: unused_field
  final $Res Function(SwidiAnnotationList) _then;

  @override
  $Res call({
    Object? annotationList = freezed,
  }) {
    return _then(_value.copyWith(
      annotationList: annotationList == freezed
          ? _value.annotationList
          : annotationList // ignore: cast_nullable_to_non_nullable
              as List<SwidiAnnotation>,
    ));
  }
}

/// @nodoc
abstract class _$$SwidiAnnotationListCtorCopyWith<$Res>
    implements $SwidiAnnotationListCopyWith<$Res> {
  factory _$$SwidiAnnotationListCtorCopyWith(_$SwidiAnnotationListCtor value,
          $Res Function(_$SwidiAnnotationListCtor) then) =
      __$$SwidiAnnotationListCtorCopyWithImpl<$Res>;
  @override
  $Res call({List<SwidiAnnotation> annotationList});
}

/// @nodoc
class __$$SwidiAnnotationListCtorCopyWithImpl<$Res>
    extends _$SwidiAnnotationListCopyWithImpl<$Res>
    implements _$$SwidiAnnotationListCtorCopyWith<$Res> {
  __$$SwidiAnnotationListCtorCopyWithImpl(_$SwidiAnnotationListCtor _value,
      $Res Function(_$SwidiAnnotationListCtor) _then)
      : super(_value, (v) => _then(v as _$SwidiAnnotationListCtor));

  @override
  _$SwidiAnnotationListCtor get _value =>
      super._value as _$SwidiAnnotationListCtor;

  @override
  $Res call({
    Object? annotationList = freezed,
  }) {
    return _then(_$SwidiAnnotationListCtor(
      annotationList: annotationList == freezed
          ? _value.annotationList
          : annotationList // ignore: cast_nullable_to_non_nullable
              as List<SwidiAnnotation>,
    ));
  }
}

/// @nodoc

class _$_$SwidiAnnotationListCtor extends _$SwidiAnnotationListCtor {
  _$_$SwidiAnnotationListCtor({required this.annotationList}) : super._();

  @override
  final List<SwidiAnnotation> annotationList;

  @override
  String toString() {
    return 'SwidiAnnotationList(annotationList: $annotationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidiAnnotationListCtor &&
            (identical(other.annotationList, annotationList) ||
                const DeepCollectionEquality()
                    .equals(other.annotationList, annotationList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(annotationList);

  @JsonKey(ignore: true)
  @override
  _$$SwidiAnnotationListCtorCopyWith<_$SwidiAnnotationListCtor> get copyWith =>
      __$$SwidiAnnotationListCtorCopyWithImpl<_$SwidiAnnotationListCtor>(
          this, _$identity);
}

abstract class _$SwidiAnnotationListCtor extends SwidiAnnotationList {
  factory _$SwidiAnnotationListCtor(
          {required List<SwidiAnnotation> annotationList}) =
      _$_$SwidiAnnotationListCtor;
  _$SwidiAnnotationListCtor._() : super._();

  @override
  List<SwidiAnnotation> get annotationList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SwidiAnnotationListCtorCopyWith<_$SwidiAnnotationListCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
