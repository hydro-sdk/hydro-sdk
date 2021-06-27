// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'projectCreationsReadDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectCreationsReadDto _$ProjectCreationsReadDtoFromJson(
    Map<String, dynamic> json) {
  return _$ProjectCreationsReadDtoCtpr.fromJson(json);
}

/// @nodoc
class _$ProjectCreationsReadDtoTearOff {
  const _$ProjectCreationsReadDtoTearOff();

  _$ProjectCreationsReadDtoCtpr call({required int remainingProjectCreations}) {
    return _$ProjectCreationsReadDtoCtpr(
      remainingProjectCreations: remainingProjectCreations,
    );
  }

  ProjectCreationsReadDto fromJson(Map<String, Object> json) {
    return ProjectCreationsReadDto.fromJson(json);
  }
}

/// @nodoc
const $ProjectCreationsReadDto = _$ProjectCreationsReadDtoTearOff();

/// @nodoc
mixin _$ProjectCreationsReadDto {
  int get remainingProjectCreations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCreationsReadDtoCopyWith<ProjectCreationsReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCreationsReadDtoCopyWith<$Res> {
  factory $ProjectCreationsReadDtoCopyWith(ProjectCreationsReadDto value,
          $Res Function(ProjectCreationsReadDto) then) =
      _$ProjectCreationsReadDtoCopyWithImpl<$Res>;
  $Res call({int remainingProjectCreations});
}

/// @nodoc
class _$ProjectCreationsReadDtoCopyWithImpl<$Res>
    implements $ProjectCreationsReadDtoCopyWith<$Res> {
  _$ProjectCreationsReadDtoCopyWithImpl(this._value, this._then);

  final ProjectCreationsReadDto _value;
  // ignore: unused_field
  final $Res Function(ProjectCreationsReadDto) _then;

  @override
  $Res call({
    Object? remainingProjectCreations = freezed,
  }) {
    return _then(_value.copyWith(
      remainingProjectCreations: remainingProjectCreations == freezed
          ? _value.remainingProjectCreations
          : remainingProjectCreations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$ProjectCreationsReadDtoCtprCopyWith<$Res>
    implements $ProjectCreationsReadDtoCopyWith<$Res> {
  factory _$$ProjectCreationsReadDtoCtprCopyWith(
          _$ProjectCreationsReadDtoCtpr value,
          $Res Function(_$ProjectCreationsReadDtoCtpr) then) =
      __$$ProjectCreationsReadDtoCtprCopyWithImpl<$Res>;
  @override
  $Res call({int remainingProjectCreations});
}

/// @nodoc
class __$$ProjectCreationsReadDtoCtprCopyWithImpl<$Res>
    extends _$ProjectCreationsReadDtoCopyWithImpl<$Res>
    implements _$$ProjectCreationsReadDtoCtprCopyWith<$Res> {
  __$$ProjectCreationsReadDtoCtprCopyWithImpl(
      _$ProjectCreationsReadDtoCtpr _value,
      $Res Function(_$ProjectCreationsReadDtoCtpr) _then)
      : super(_value, (v) => _then(v as _$ProjectCreationsReadDtoCtpr));

  @override
  _$ProjectCreationsReadDtoCtpr get _value =>
      super._value as _$ProjectCreationsReadDtoCtpr;

  @override
  $Res call({
    Object? remainingProjectCreations = freezed,
  }) {
    return _then(_$ProjectCreationsReadDtoCtpr(
      remainingProjectCreations: remainingProjectCreations == freezed
          ? _value.remainingProjectCreations
          : remainingProjectCreations // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$ProjectCreationsReadDtoCtpr implements _$ProjectCreationsReadDtoCtpr {
  const _$_$ProjectCreationsReadDtoCtpr(
      {required this.remainingProjectCreations});

  factory _$_$ProjectCreationsReadDtoCtpr.fromJson(Map<String, dynamic> json) =>
      _$_$_$ProjectCreationsReadDtoCtprFromJson(json);

  @override
  final int remainingProjectCreations;

  @override
  String toString() {
    return 'ProjectCreationsReadDto(remainingProjectCreations: $remainingProjectCreations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ProjectCreationsReadDtoCtpr &&
            (identical(other.remainingProjectCreations,
                    remainingProjectCreations) ||
                const DeepCollectionEquality().equals(
                    other.remainingProjectCreations,
                    remainingProjectCreations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(remainingProjectCreations);

  @JsonKey(ignore: true)
  @override
  _$$ProjectCreationsReadDtoCtprCopyWith<_$ProjectCreationsReadDtoCtpr>
      get copyWith => __$$ProjectCreationsReadDtoCtprCopyWithImpl<
          _$ProjectCreationsReadDtoCtpr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ProjectCreationsReadDtoCtprToJson(this);
  }
}

abstract class _$ProjectCreationsReadDtoCtpr
    implements ProjectCreationsReadDto {
  const factory _$ProjectCreationsReadDtoCtpr(
          {required int remainingProjectCreations}) =
      _$_$ProjectCreationsReadDtoCtpr;

  factory _$ProjectCreationsReadDtoCtpr.fromJson(Map<String, dynamic> json) =
      _$_$ProjectCreationsReadDtoCtpr.fromJson;

  @override
  int get remainingProjectCreations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProjectCreationsReadDtoCtprCopyWith<_$ProjectCreationsReadDtoCtpr>
      get copyWith => throw _privateConstructorUsedError;
}
