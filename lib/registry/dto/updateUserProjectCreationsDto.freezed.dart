// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'updateUserProjectCreationsDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UpdateUserProjectCreationsDto _$UpdateUserProjectCreationsDtoFromJson(
    Map<String, dynamic> json) {
  return _$UpdateUserProjectCreationsDtoCtor.fromJson(json);
}

/// @nodoc
class _$UpdateUserProjectCreationsDtoTearOff {
  const _$UpdateUserProjectCreationsDtoTearOff();

// ignore: unused_element
  _$UpdateUserProjectCreationsDtoCtor call(
      {@required String subject, @required int numRemainingProjectCreations}) {
    return _$UpdateUserProjectCreationsDtoCtor(
      subject: subject,
      numRemainingProjectCreations: numRemainingProjectCreations,
    );
  }

// ignore: unused_element
  UpdateUserProjectCreationsDto fromJson(Map<String, Object> json) {
    return UpdateUserProjectCreationsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUserProjectCreationsDto = _$UpdateUserProjectCreationsDtoTearOff();

/// @nodoc
mixin _$UpdateUserProjectCreationsDto {
  String get subject;
  int get numRemainingProjectCreations;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UpdateUserProjectCreationsDtoCopyWith<UpdateUserProjectCreationsDto>
      get copyWith;
}

/// @nodoc
abstract class $UpdateUserProjectCreationsDtoCopyWith<$Res> {
  factory $UpdateUserProjectCreationsDtoCopyWith(
          UpdateUserProjectCreationsDto value,
          $Res Function(UpdateUserProjectCreationsDto) then) =
      _$UpdateUserProjectCreationsDtoCopyWithImpl<$Res>;
  $Res call({String subject, int numRemainingProjectCreations});
}

/// @nodoc
class _$UpdateUserProjectCreationsDtoCopyWithImpl<$Res>
    implements $UpdateUserProjectCreationsDtoCopyWith<$Res> {
  _$UpdateUserProjectCreationsDtoCopyWithImpl(this._value, this._then);

  final UpdateUserProjectCreationsDto _value;
  // ignore: unused_field
  final $Res Function(UpdateUserProjectCreationsDto) _then;

  @override
  $Res call({
    Object subject = freezed,
    Object numRemainingProjectCreations = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed ? _value.subject : subject as String,
      numRemainingProjectCreations: numRemainingProjectCreations == freezed
          ? _value.numRemainingProjectCreations
          : numRemainingProjectCreations as int,
    ));
  }
}

/// @nodoc
abstract class _$$UpdateUserProjectCreationsDtoCtorCopyWith<$Res>
    implements $UpdateUserProjectCreationsDtoCopyWith<$Res> {
  factory _$$UpdateUserProjectCreationsDtoCtorCopyWith(
          _$UpdateUserProjectCreationsDtoCtor value,
          $Res Function(_$UpdateUserProjectCreationsDtoCtor) then) =
      __$$UpdateUserProjectCreationsDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String subject, int numRemainingProjectCreations});
}

/// @nodoc
class __$$UpdateUserProjectCreationsDtoCtorCopyWithImpl<$Res>
    extends _$UpdateUserProjectCreationsDtoCopyWithImpl<$Res>
    implements _$$UpdateUserProjectCreationsDtoCtorCopyWith<$Res> {
  __$$UpdateUserProjectCreationsDtoCtorCopyWithImpl(
      _$UpdateUserProjectCreationsDtoCtor _value,
      $Res Function(_$UpdateUserProjectCreationsDtoCtor) _then)
      : super(_value, (v) => _then(v as _$UpdateUserProjectCreationsDtoCtor));

  @override
  _$UpdateUserProjectCreationsDtoCtor get _value =>
      super._value as _$UpdateUserProjectCreationsDtoCtor;

  @override
  $Res call({
    Object subject = freezed,
    Object numRemainingProjectCreations = freezed,
  }) {
    return _then(_$UpdateUserProjectCreationsDtoCtor(
      subject: subject == freezed ? _value.subject : subject as String,
      numRemainingProjectCreations: numRemainingProjectCreations == freezed
          ? _value.numRemainingProjectCreations
          : numRemainingProjectCreations as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$UpdateUserProjectCreationsDtoCtor
    implements _$UpdateUserProjectCreationsDtoCtor {
  const _$_$UpdateUserProjectCreationsDtoCtor(
      {@required this.subject, @required this.numRemainingProjectCreations})
      : assert(subject != null),
        assert(numRemainingProjectCreations != null);

  factory _$_$UpdateUserProjectCreationsDtoCtor.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$UpdateUserProjectCreationsDtoCtorFromJson(json);

  @override
  final String subject;
  @override
  final int numRemainingProjectCreations;

  @override
  String toString() {
    return 'UpdateUserProjectCreationsDto(subject: $subject, numRemainingProjectCreations: $numRemainingProjectCreations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$UpdateUserProjectCreationsDtoCtor &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.numRemainingProjectCreations,
                    numRemainingProjectCreations) ||
                const DeepCollectionEquality().equals(
                    other.numRemainingProjectCreations,
                    numRemainingProjectCreations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(numRemainingProjectCreations);

  @JsonKey(ignore: true)
  @override
  _$$UpdateUserProjectCreationsDtoCtorCopyWith<
          _$UpdateUserProjectCreationsDtoCtor>
      get copyWith => __$$UpdateUserProjectCreationsDtoCtorCopyWithImpl<
          _$UpdateUserProjectCreationsDtoCtor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$UpdateUserProjectCreationsDtoCtorToJson(this);
  }
}

abstract class _$UpdateUserProjectCreationsDtoCtor
    implements UpdateUserProjectCreationsDto {
  const factory _$UpdateUserProjectCreationsDtoCtor(
          {@required String subject,
          @required int numRemainingProjectCreations}) =
      _$_$UpdateUserProjectCreationsDtoCtor;

  factory _$UpdateUserProjectCreationsDtoCtor.fromJson(
          Map<String, dynamic> json) =
      _$_$UpdateUserProjectCreationsDtoCtor.fromJson;

  @override
  String get subject;
  @override
  int get numRemainingProjectCreations;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserProjectCreationsDtoCtorCopyWith<
      _$UpdateUserProjectCreationsDtoCtor> get copyWith;
}