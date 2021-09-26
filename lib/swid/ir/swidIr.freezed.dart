// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidIr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidIr _$SwidIrFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidClass':
      return _$SwidIrFromSwidClass.fromJson(json);
    case 'fromSwidEnum':
      return _$SwidIrFromSwidEnum.fromJson(json);
    case 'fromSwidTopLevelStaticConstFieldDeclaration':
      return _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidIrTearOff {
  const _$SwidIrTearOff();

  _$SwidIrFromSwidClass fromSwidClass({required SwidClass swidClass}) {
    return _$SwidIrFromSwidClass(
      swidClass: swidClass,
    );
  }

  _$SwidIrFromSwidEnum fromSwidEnum({required SwidEnum swidEnum}) {
    return _$SwidIrFromSwidEnum(
      swidEnum: swidEnum,
    );
  }

  _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration
      fromSwidTopLevelStaticConstFieldDeclaration(
          {required SwidTopLevelStaticConstFieldDeclaration
              swidTopLevelStaticConstFieldDeclaration}) {
    return _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration(
      swidTopLevelStaticConstFieldDeclaration:
          swidTopLevelStaticConstFieldDeclaration,
    );
  }

  SwidIr fromJson(Map<String, Object> json) {
    return SwidIr.fromJson(json);
  }
}

/// @nodoc
const $SwidIr = _$SwidIrTearOff();

/// @nodoc
mixin _$SwidIr {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidIrFromSwidClass value) fromSwidClass,
    required TResult Function(_$SwidIrFromSwidEnum value) fromSwidEnum,
    required TResult Function(
            _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidIrFromSwidClass value)? fromSwidClass,
    TResult Function(_$SwidIrFromSwidEnum value)? fromSwidEnum,
    TResult Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
    Object? swidClass = freezed,
  }) {
    return _then(_$SwidIrFromSwidClass(
      swidClass: swidClass == freezed
          ? _value.swidClass
          : swidClass // ignore: cast_nullable_to_non_nullable
              as SwidClass,
    ));
  }

  @override
  $SwidClassCopyWith<$Res> get swidClass {
    return $SwidClassCopyWith<$Res>(_value.swidClass, (value) {
      return _then(_value.copyWith(swidClass: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidIrFromSwidClass implements _$SwidIrFromSwidClass {
  const _$_$SwidIrFromSwidClass({required this.swidClass});

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

  @JsonKey(ignore: true)
  @override
  _$$SwidIrFromSwidClassCopyWith<_$SwidIrFromSwidClass> get copyWith =>
      __$$SwidIrFromSwidClassCopyWithImpl<_$SwidIrFromSwidClass>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
    if (fromSwidClass != null) {
      return fromSwidClass(swidClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidIrFromSwidClass value) fromSwidClass,
    required TResult Function(_$SwidIrFromSwidEnum value) fromSwidEnum,
    required TResult Function(
            _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidIrFromSwidClass value)? fromSwidClass,
    TResult Function(_$SwidIrFromSwidEnum value)? fromSwidEnum,
    TResult Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
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
  const factory _$SwidIrFromSwidClass({required SwidClass swidClass}) =
      _$_$SwidIrFromSwidClass;

  factory _$SwidIrFromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$SwidIrFromSwidClass.fromJson;

  SwidClass get swidClass => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidIrFromSwidClassCopyWith<_$SwidIrFromSwidClass> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? swidEnum = freezed,
  }) {
    return _then(_$SwidIrFromSwidEnum(
      swidEnum: swidEnum == freezed
          ? _value.swidEnum
          : swidEnum // ignore: cast_nullable_to_non_nullable
              as SwidEnum,
    ));
  }

  @override
  $SwidEnumCopyWith<$Res> get swidEnum {
    return $SwidEnumCopyWith<$Res>(_value.swidEnum, (value) {
      return _then(_value.copyWith(swidEnum: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidIrFromSwidEnum implements _$SwidIrFromSwidEnum {
  const _$_$SwidIrFromSwidEnum({required this.swidEnum});

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

  @JsonKey(ignore: true)
  @override
  _$$SwidIrFromSwidEnumCopyWith<_$SwidIrFromSwidEnum> get copyWith =>
      __$$SwidIrFromSwidEnumCopyWithImpl<_$SwidIrFromSwidEnum>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidEnum(swidEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
    if (fromSwidEnum != null) {
      return fromSwidEnum(swidEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidIrFromSwidClass value) fromSwidClass,
    required TResult Function(_$SwidIrFromSwidEnum value) fromSwidEnum,
    required TResult Function(
            _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidEnum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidIrFromSwidClass value)? fromSwidClass,
    TResult Function(_$SwidIrFromSwidEnum value)? fromSwidEnum,
    TResult Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
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
  const factory _$SwidIrFromSwidEnum({required SwidEnum swidEnum}) =
      _$_$SwidIrFromSwidEnum;

  factory _$SwidIrFromSwidEnum.fromJson(Map<String, dynamic> json) =
      _$_$SwidIrFromSwidEnum.fromJson;

  SwidEnum get swidEnum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidIrFromSwidEnumCopyWith<_$SwidIrFromSwidEnum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWith<
    $Res> {
  factory _$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWith(
          _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value,
          $Res Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration)
              then) =
      __$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWithImpl<$Res>;
  $Res call(
      {SwidTopLevelStaticConstFieldDeclaration
          swidTopLevelStaticConstFieldDeclaration});

  $SwidTopLevelStaticConstFieldDeclarationCopyWith<$Res>
      get swidTopLevelStaticConstFieldDeclaration;
}

/// @nodoc
class __$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWithImpl<$Res>
    extends _$SwidIrCopyWithImpl<$Res>
    implements
        _$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWith<$Res> {
  __$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWithImpl(
      _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration _value,
      $Res Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration) _then)
      : super(
            _value,
            (v) => _then(
                v as _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration));

  @override
  _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration get _value =>
      super._value as _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration;

  @override
  $Res call({
    Object? swidTopLevelStaticConstFieldDeclaration = freezed,
  }) {
    return _then(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration(
      swidTopLevelStaticConstFieldDeclaration:
          swidTopLevelStaticConstFieldDeclaration == freezed
              ? _value.swidTopLevelStaticConstFieldDeclaration
              : swidTopLevelStaticConstFieldDeclaration // ignore: cast_nullable_to_non_nullable
                  as SwidTopLevelStaticConstFieldDeclaration,
    ));
  }

  @override
  $SwidTopLevelStaticConstFieldDeclarationCopyWith<$Res>
      get swidTopLevelStaticConstFieldDeclaration {
    return $SwidTopLevelStaticConstFieldDeclarationCopyWith<$Res>(
        _value.swidTopLevelStaticConstFieldDeclaration, (value) {
      return _then(
          _value.copyWith(swidTopLevelStaticConstFieldDeclaration: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration
    implements _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration {
  const _$_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration(
      {required this.swidTopLevelStaticConstFieldDeclaration});

  factory _$_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidIrFromSwidTopLevelStaticConstFieldDeclarationFromJson(json);

  @override
  final SwidTopLevelStaticConstFieldDeclaration
      swidTopLevelStaticConstFieldDeclaration;

  @override
  String toString() {
    return 'SwidIr.fromSwidTopLevelStaticConstFieldDeclaration(swidTopLevelStaticConstFieldDeclaration: $swidTopLevelStaticConstFieldDeclaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration &&
            (identical(other.swidTopLevelStaticConstFieldDeclaration,
                    swidTopLevelStaticConstFieldDeclaration) ||
                const DeepCollectionEquality().equals(
                    other.swidTopLevelStaticConstFieldDeclaration,
                    swidTopLevelStaticConstFieldDeclaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(swidTopLevelStaticConstFieldDeclaration);

  @JsonKey(ignore: true)
  @override
  _$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWith<
          _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration>
      get copyWith =>
          __$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWithImpl<
                  _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidTopLevelStaticConstFieldDeclaration(
        swidTopLevelStaticConstFieldDeclaration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(
            SwidTopLevelStaticConstFieldDeclaration
                swidTopLevelStaticConstFieldDeclaration)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
    if (fromSwidTopLevelStaticConstFieldDeclaration != null) {
      return fromSwidTopLevelStaticConstFieldDeclaration(
          swidTopLevelStaticConstFieldDeclaration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidIrFromSwidClass value) fromSwidClass,
    required TResult Function(_$SwidIrFromSwidEnum value) fromSwidEnum,
    required TResult Function(
            _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)
        fromSwidTopLevelStaticConstFieldDeclaration,
  }) {
    return fromSwidTopLevelStaticConstFieldDeclaration(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidIrFromSwidClass value)? fromSwidClass,
    TResult Function(_$SwidIrFromSwidEnum value)? fromSwidEnum,
    TResult Function(_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration value)?
        fromSwidTopLevelStaticConstFieldDeclaration,
    required TResult orElse(),
  }) {
    if (fromSwidTopLevelStaticConstFieldDeclaration != null) {
      return fromSwidTopLevelStaticConstFieldDeclaration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidIrFromSwidTopLevelStaticConstFieldDeclarationToJson(this)
      ..['runtimeType'] = 'fromSwidTopLevelStaticConstFieldDeclaration';
  }
}

abstract class _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration
    implements SwidIr {
  const factory _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration(
          {required SwidTopLevelStaticConstFieldDeclaration
              swidTopLevelStaticConstFieldDeclaration}) =
      _$_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration;

  factory _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidIrFromSwidTopLevelStaticConstFieldDeclaration.fromJson;

  SwidTopLevelStaticConstFieldDeclaration
      get swidTopLevelStaticConstFieldDeclaration =>
          throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidIrFromSwidTopLevelStaticConstFieldDeclarationCopyWith<
          _$SwidIrFromSwidTopLevelStaticConstFieldDeclaration>
      get copyWith => throw _privateConstructorUsedError;
}
