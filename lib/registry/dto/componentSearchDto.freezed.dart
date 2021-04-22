// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'componentSearchDto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ComponentSearchDto _$ComponentSearchDtoFromJson(Map<String, dynamic> json) {
  return _$ComponentSearchDtoCtor.fromJson(json);
}

/// @nodoc
class _$ComponentSearchDtoTearOff {
  const _$ComponentSearchDtoTearOff();

// ignore: unused_element
  _$ComponentSearchDtoCtor call(
      {@required String id,
      @required String name,
      @required String description}) {
    return _$ComponentSearchDtoCtor(
      id: id,
      name: name,
      description: description,
    );
  }

// ignore: unused_element
  ComponentSearchDto fromJson(Map<String, Object> json) {
    return ComponentSearchDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ComponentSearchDto = _$ComponentSearchDtoTearOff();

/// @nodoc
mixin _$ComponentSearchDto {
  String get id;
  String get name;
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ComponentSearchDtoCopyWith<ComponentSearchDto> get copyWith;
}

/// @nodoc
abstract class $ComponentSearchDtoCopyWith<$Res> {
  factory $ComponentSearchDtoCopyWith(
          ComponentSearchDto value, $Res Function(ComponentSearchDto) then) =
      _$ComponentSearchDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String description});
}

/// @nodoc
class _$ComponentSearchDtoCopyWithImpl<$Res>
    implements $ComponentSearchDtoCopyWith<$Res> {
  _$ComponentSearchDtoCopyWithImpl(this._value, this._then);

  final ComponentSearchDto _value;
  // ignore: unused_field
  final $Res Function(ComponentSearchDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$$ComponentSearchDtoCtorCopyWith<$Res>
    implements $ComponentSearchDtoCopyWith<$Res> {
  factory _$$ComponentSearchDtoCtorCopyWith(_$ComponentSearchDtoCtor value,
          $Res Function(_$ComponentSearchDtoCtor) then) =
      __$$ComponentSearchDtoCtorCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description});
}

/// @nodoc
class __$$ComponentSearchDtoCtorCopyWithImpl<$Res>
    extends _$ComponentSearchDtoCopyWithImpl<$Res>
    implements _$$ComponentSearchDtoCtorCopyWith<$Res> {
  __$$ComponentSearchDtoCtorCopyWithImpl(_$ComponentSearchDtoCtor _value,
      $Res Function(_$ComponentSearchDtoCtor) _then)
      : super(_value, (v) => _then(v as _$ComponentSearchDtoCtor));

  @override
  _$ComponentSearchDtoCtor get _value =>
      super._value as _$ComponentSearchDtoCtor;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
  }) {
    return _then(_$ComponentSearchDtoCtor(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_$ComponentSearchDtoCtor implements _$ComponentSearchDtoCtor {
  const _$_$ComponentSearchDtoCtor(
      {@required this.id, @required this.name, @required this.description})
      : assert(id != null),
        assert(name != null),
        assert(description != null);

  factory _$_$ComponentSearchDtoCtor.fromJson(Map<String, dynamic> json) =>
      _$_$_$ComponentSearchDtoCtorFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ComponentSearchDto(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ComponentSearchDtoCtor &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$$ComponentSearchDtoCtorCopyWith<_$ComponentSearchDtoCtor> get copyWith =>
      __$$ComponentSearchDtoCtorCopyWithImpl<_$ComponentSearchDtoCtor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$ComponentSearchDtoCtorToJson(this);
  }
}

abstract class _$ComponentSearchDtoCtor implements ComponentSearchDto {
  const factory _$ComponentSearchDtoCtor(
      {@required String id,
      @required String name,
      @required String description}) = _$_$ComponentSearchDtoCtor;

  factory _$ComponentSearchDtoCtor.fromJson(Map<String, dynamic> json) =
      _$_$ComponentSearchDtoCtor.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ComponentSearchDtoCtorCopyWith<_$ComponentSearchDtoCtor> get copyWith;
}
