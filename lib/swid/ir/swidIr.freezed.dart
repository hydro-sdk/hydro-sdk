// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'swidIr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SwidIr _$SwidIrFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidClass':
      return _$SwidIrFromSwidClass.fromJson(json);
    case 'fromSwidEnum':
      return _$SwidIrFromSwidEnum.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidIrTearOff {
  const _$SwidIrTearOff();

// ignore: unused_element
  _$SwidIrFromSwidClass fromSwidClass({@required SwidClass swidClass}) {
    return _$SwidIrFromSwidClass(
      swidClass: swidClass,
    );
  }

// ignore: unused_element
  _$SwidIrFromSwidEnum fromSwidEnum({@required SwidEnum swidEnum}) {
    return _$SwidIrFromSwidEnum(
      swidEnum: swidEnum,
    );
  }

// ignore: unused_element
  SwidIr fromJson(Map<String, Object> json) {
    return SwidIr.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SwidIr = _$SwidIrTearOff();

/// @nodoc
mixin _$SwidIr {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidEnum(SwidEnum swidEnum),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidEnum(SwidEnum swidEnum),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidClass(_$SwidIrFromSwidClass value),
    @required Result fromSwidEnum(_$SwidIrFromSwidEnum value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidIrFromSwidClass value),
    Result fromSwidEnum(_$SwidIrFromSwidEnum value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $SwidIrCopyWith<$Res> {
  factory $SwidIrCopyWith(SwidIr value, $Res Function(SwidIr) then) =
      _$SwidIrCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidIrCopyWithImpl<$Res> implements $SwidIrCopyWith<$Res> {
  _$SwidIrCopyWithImpl(this._value, this._then);

  final SwidIr _value;
  // ignore: unused_field
  final $Res Function(SwidIr) _then;
}

/// @nodoc
abstract class _$$SwidIrFromSwidClassCopyWith<$Res> {
  factory _$$SwidIrFromSwidClassCopyWith(_$SwidIrFromSwidClass value,
          $Res Function(_$SwidIrFromSwidClass) then) =
      __$$SwidIrFromSwidClassCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$SwidIrFromSwidClassCopyWithImpl<$Res>
    extends _$SwidIrCopyWithImpl<$Res>
    implements _$$SwidIrFromSwidClassCopyWith<$Res> {
  __$$SwidIrFromSwidClassCopyWithImpl(
      _$SwidIrFromSwidClass _value, $Res Function(_$SwidIrFromSwidClass) _then)
      : super(_value, (v) => _then(v as _$SwidIrFromSwidClass));

  @override
  _$SwidIrFromSwidClass get _value => super._value as _$SwidIrFromSwidClass;

  @override
  $Res call({
    Object swidClass = freezed,
  }) {
    return _then(_$SwidIrFromSwidClass(
      swidClass:
          swidClass == freezed ? _value.swidClass : swidClass as SwidClass,
    ));
  }

  @override
  $SwidClassCopyWith<$Res> get swidClass {
    if (_value.swidClass == null) {
      return null;
    }
    return $SwidClassCopyWith<$Res>(_value.swidClass, (value) {
      return _then(_value.copyWith(swidClass: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidIrFromSwidClass implements _$SwidIrFromSwidClass {
  const _$_$SwidIrFromSwidClass({@required this.swidClass})
      : assert(swidClass != null);

  factory _$_$SwidIrFromSwidClass.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidIrFromSwidClassFromJson(json);

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'SwidIr.fromSwidClass(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidIrFromSwidClass &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @override
  _$$SwidIrFromSwidClassCopyWith<_$SwidIrFromSwidClass> get copyWith =>
      __$$SwidIrFromSwidClassCopyWithImpl<_$SwidIrFromSwidClass>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidEnum(SwidEnum swidEnum),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidEnum != null);
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidEnum(SwidEnum swidEnum),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidClass != null) {
      return fromSwidClass(swidClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidClass(_$SwidIrFromSwidClass value),
    @required Result fromSwidEnum(_$SwidIrFromSwidEnum value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidEnum != null);
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidIrFromSwidClass value),
    Result fromSwidEnum(_$SwidIrFromSwidEnum value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidClass != null) {
      return fromSwidClass(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidIrFromSwidClassToJson(this)
      ..['runtimeType'] = 'fromSwidClass';
  }
}

abstract class _$SwidIrFromSwidClass implements SwidIr {
  const factory _$SwidIrFromSwidClass({@required SwidClass swidClass}) =
      _$_$SwidIrFromSwidClass;

  factory _$SwidIrFromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$SwidIrFromSwidClass.fromJson;

  SwidClass get swidClass;
  _$$SwidIrFromSwidClassCopyWith<_$SwidIrFromSwidClass> get copyWith;
}

/// @nodoc
abstract class _$$SwidIrFromSwidEnumCopyWith<$Res> {
  factory _$$SwidIrFromSwidEnumCopyWith(_$SwidIrFromSwidEnum value,
          $Res Function(_$SwidIrFromSwidEnum) then) =
      __$$SwidIrFromSwidEnumCopyWithImpl<$Res>;
  $Res call({SwidEnum swidEnum});

  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class __$$SwidIrFromSwidEnumCopyWithImpl<$Res>
    extends _$SwidIrCopyWithImpl<$Res>
    implements _$$SwidIrFromSwidEnumCopyWith<$Res> {
  __$$SwidIrFromSwidEnumCopyWithImpl(
      _$SwidIrFromSwidEnum _value, $Res Function(_$SwidIrFromSwidEnum) _then)
      : super(_value, (v) => _then(v as _$SwidIrFromSwidEnum));

  @override
  _$SwidIrFromSwidEnum get _value => super._value as _$SwidIrFromSwidEnum;

  @override
  $Res call({
    Object swidEnum = freezed,
  }) {
    return _then(_$SwidIrFromSwidEnum(
      swidEnum: swidEnum == freezed ? _value.swidEnum : swidEnum as SwidEnum,
    ));
  }

  @override
  $SwidEnumCopyWith<$Res> get swidEnum {
    if (_value.swidEnum == null) {
      return null;
    }
    return $SwidEnumCopyWith<$Res>(_value.swidEnum, (value) {
      return _then(_value.copyWith(swidEnum: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$_$SwidIrFromSwidEnum implements _$SwidIrFromSwidEnum {
  const _$_$SwidIrFromSwidEnum({@required this.swidEnum})
      : assert(swidEnum != null);

  factory _$_$SwidIrFromSwidEnum.fromJson(Map<String, dynamic> json) =>
      _$_$_$SwidIrFromSwidEnumFromJson(json);

  @override
  final SwidEnum swidEnum;

  @override
  String toString() {
    return 'SwidIr.fromSwidEnum(swidEnum: $swidEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidIrFromSwidEnum &&
            (identical(other.swidEnum, swidEnum) ||
                const DeepCollectionEquality()
                    .equals(other.swidEnum, swidEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidEnum);

  @override
  _$$SwidIrFromSwidEnumCopyWith<_$SwidIrFromSwidEnum> get copyWith =>
      __$$SwidIrFromSwidEnumCopyWithImpl<_$SwidIrFromSwidEnum>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromSwidClass(SwidClass swidClass),
    @required Result fromSwidEnum(SwidEnum swidEnum),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidEnum != null);
    return fromSwidEnum(swidEnum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromSwidClass(SwidClass swidClass),
    Result fromSwidEnum(SwidEnum swidEnum),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidEnum != null) {
      return fromSwidEnum(swidEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromSwidClass(_$SwidIrFromSwidClass value),
    @required Result fromSwidEnum(_$SwidIrFromSwidEnum value),
  }) {
    assert(fromSwidClass != null);
    assert(fromSwidEnum != null);
    return fromSwidEnum(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromSwidClass(_$SwidIrFromSwidClass value),
    Result fromSwidEnum(_$SwidIrFromSwidEnum value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromSwidEnum != null) {
      return fromSwidEnum(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidIrFromSwidEnumToJson(this)
      ..['runtimeType'] = 'fromSwidEnum';
  }
}

abstract class _$SwidIrFromSwidEnum implements SwidIr {
  const factory _$SwidIrFromSwidEnum({@required SwidEnum swidEnum}) =
      _$_$SwidIrFromSwidEnum;

  factory _$SwidIrFromSwidEnum.fromJson(Map<String, dynamic> json) =
      _$_$SwidIrFromSwidEnum.fromJson;

  SwidEnum get swidEnum;
  _$$SwidIrFromSwidEnumCopyWith<_$SwidIrFromSwidEnum> get copyWith;
}
