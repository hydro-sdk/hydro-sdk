// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidType _$SwidTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidInterface':
      return _$FromSwidInterface.fromJson(json);
    case 'fromSwidClass':
      return _$FromSwidClass.fromJson(json);
    case 'fromSwidDefaultFormalParameter':
      return _$FromSwidDefaultFormalParameter.fromJson(json);
    case 'fromSwidFunctionType':
      return _$FromSwidFunctionType.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidTypeTearOff {
  const _$SwidTypeTearOff();

  _$FromSwidInterface fromSwidInterface(
      {required SwidInterface swidInterface}) {
    return _$FromSwidInterface(
      swidInterface: swidInterface,
    );
  }

  _$FromSwidClass fromSwidClass({required SwidClass swidClass}) {
    return _$FromSwidClass(
      swidClass: swidClass,
    );
  }

  _$FromSwidDefaultFormalParameter fromSwidDefaultFormalParameter(
      {required SwidDefaultFormalParameter swidDefaultFormalParameter}) {
    return _$FromSwidDefaultFormalParameter(
      swidDefaultFormalParameter: swidDefaultFormalParameter,
    );
  }

  _$FromSwidFunctionType fromSwidFunctionType(
      {required SwidFunctionType swidFunctionType}) {
    return _$FromSwidFunctionType(
      swidFunctionType: swidFunctionType,
    );
  }

  SwidType fromJson(Map<String, Object> json) {
    return SwidType.fromJson(json);
  }
}

/// @nodoc
const $SwidType = _$SwidTypeTearOff();

/// @nodoc
mixin _$SwidType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(
            SwidDefaultFormalParameter swidDefaultFormalParameter)
        fromSwidDefaultFormalParameter,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidDefaultFormalParameter swidDefaultFormalParameter)?
        fromSwidDefaultFormalParameter,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidDefaultFormalParameter value)
        fromSwidDefaultFormalParameter,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidDefaultFormalParameter value)?
        fromSwidDefaultFormalParameter,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidTypeCopyWith<$Res> {
  factory $SwidTypeCopyWith(SwidType value, $Res Function(SwidType) then) =
      _$SwidTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidTypeCopyWithImpl<$Res> implements $SwidTypeCopyWith<$Res> {
  _$SwidTypeCopyWithImpl(this._value, this._then);

  final SwidType _value;
  // ignore: unused_field
  final $Res Function(SwidType) _then;
}

/// @nodoc
abstract class _$$FromSwidInterfaceCopyWith<$Res> {
  factory _$$FromSwidInterfaceCopyWith(
          _$FromSwidInterface value, $Res Function(_$FromSwidInterface) then) =
      __$$FromSwidInterfaceCopyWithImpl<$Res>;
  $Res call({SwidInterface swidInterface});

  $SwidInterfaceCopyWith<$Res> get swidInterface;
}

/// @nodoc
class __$$FromSwidInterfaceCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidInterfaceCopyWith<$Res> {
  __$$FromSwidInterfaceCopyWithImpl(
      _$FromSwidInterface _value, $Res Function(_$FromSwidInterface) _then)
      : super(_value, (v) => _then(v as _$FromSwidInterface));

  @override
  _$FromSwidInterface get _value => super._value as _$FromSwidInterface;

  @override
  $Res call({
    Object? swidInterface = freezed,
  }) {
    return _then(_$FromSwidInterface(
      swidInterface: swidInterface == freezed
          ? _value.swidInterface
          : swidInterface // ignore: cast_nullable_to_non_nullable
              as SwidInterface,
    ));
  }

  @override
  $SwidInterfaceCopyWith<$Res> get swidInterface {
    return $SwidInterfaceCopyWith<$Res>(_value.swidInterface, (value) {
      return _then(_value.copyWith(swidInterface: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$FromSwidInterface extends _$FromSwidInterface {
  _$_$FromSwidInterface({required this.swidInterface}) : super._();

  factory _$_$FromSwidInterface.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidInterfaceFromJson(json);

  @override
  final SwidInterface swidInterface;

  @override
  String toString() {
    return 'SwidType.fromSwidInterface(swidInterface: $swidInterface)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidInterface &&
            (identical(other.swidInterface, swidInterface) ||
                const DeepCollectionEquality()
                    .equals(other.swidInterface, swidInterface)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidInterface);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith =>
      __$$FromSwidInterfaceCopyWithImpl<_$FromSwidInterface>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(
            SwidDefaultFormalParameter swidDefaultFormalParameter)
        fromSwidDefaultFormalParameter,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidInterface(swidInterface);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidDefaultFormalParameter swidDefaultFormalParameter)?
        fromSwidDefaultFormalParameter,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidInterface != null) {
      return fromSwidInterface(swidInterface);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidDefaultFormalParameter value)
        fromSwidDefaultFormalParameter,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidInterface(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidDefaultFormalParameter value)?
        fromSwidDefaultFormalParameter,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidInterface != null) {
      return fromSwidInterface(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidInterfaceToJson(this)
      ..['runtimeType'] = 'fromSwidInterface';
  }
}

abstract class _$FromSwidInterface extends SwidType {
  factory _$FromSwidInterface({required SwidInterface swidInterface}) =
      _$_$FromSwidInterface;
  _$FromSwidInterface._() : super._();

  factory _$FromSwidInterface.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidInterface.fromJson;

  SwidInterface get swidInterface => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidInterfaceCopyWith<_$FromSwidInterface> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromSwidClassCopyWith<$Res> {
  factory _$$FromSwidClassCopyWith(
          _$FromSwidClass value, $Res Function(_$FromSwidClass) then) =
      __$$FromSwidClassCopyWithImpl<$Res>;
  $Res call({SwidClass swidClass});

  $SwidClassCopyWith<$Res> get swidClass;
}

/// @nodoc
class __$$FromSwidClassCopyWithImpl<$Res> extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidClassCopyWith<$Res> {
  __$$FromSwidClassCopyWithImpl(
      _$FromSwidClass _value, $Res Function(_$FromSwidClass) _then)
      : super(_value, (v) => _then(v as _$FromSwidClass));

  @override
  _$FromSwidClass get _value => super._value as _$FromSwidClass;

  @override
  $Res call({
    Object? swidClass = freezed,
  }) {
    return _then(_$FromSwidClass(
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
class _$_$FromSwidClass extends _$FromSwidClass {
  _$_$FromSwidClass({required this.swidClass}) : super._();

  factory _$_$FromSwidClass.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidClassFromJson(json);

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'SwidType.fromSwidClass(swidClass: $swidClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidClass &&
            (identical(other.swidClass, swidClass) ||
                const DeepCollectionEquality()
                    .equals(other.swidClass, swidClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidClass);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      __$$FromSwidClassCopyWithImpl<_$FromSwidClass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(
            SwidDefaultFormalParameter swidDefaultFormalParameter)
        fromSwidDefaultFormalParameter,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidDefaultFormalParameter swidDefaultFormalParameter)?
        fromSwidDefaultFormalParameter,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
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
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidDefaultFormalParameter value)
        fromSwidDefaultFormalParameter,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidDefaultFormalParameter value)?
        fromSwidDefaultFormalParameter,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidClass != null) {
      return fromSwidClass(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidClassToJson(this)..['runtimeType'] = 'fromSwidClass';
  }
}

abstract class _$FromSwidClass extends SwidType {
  factory _$FromSwidClass({required SwidClass swidClass}) = _$_$FromSwidClass;
  _$FromSwidClass._() : super._();

  factory _$FromSwidClass.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidClass.fromJson;

  SwidClass get swidClass => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromSwidDefaultFormalParameterCopyWith<$Res> {
  factory _$$FromSwidDefaultFormalParameterCopyWith(
          _$FromSwidDefaultFormalParameter value,
          $Res Function(_$FromSwidDefaultFormalParameter) then) =
      __$$FromSwidDefaultFormalParameterCopyWithImpl<$Res>;
  $Res call({SwidDefaultFormalParameter swidDefaultFormalParameter});

  $SwidDefaultFormalParameterCopyWith<$Res> get swidDefaultFormalParameter;
}

/// @nodoc
class __$$FromSwidDefaultFormalParameterCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidDefaultFormalParameterCopyWith<$Res> {
  __$$FromSwidDefaultFormalParameterCopyWithImpl(
      _$FromSwidDefaultFormalParameter _value,
      $Res Function(_$FromSwidDefaultFormalParameter) _then)
      : super(_value, (v) => _then(v as _$FromSwidDefaultFormalParameter));

  @override
  _$FromSwidDefaultFormalParameter get _value =>
      super._value as _$FromSwidDefaultFormalParameter;

  @override
  $Res call({
    Object? swidDefaultFormalParameter = freezed,
  }) {
    return _then(_$FromSwidDefaultFormalParameter(
      swidDefaultFormalParameter: swidDefaultFormalParameter == freezed
          ? _value.swidDefaultFormalParameter
          : swidDefaultFormalParameter // ignore: cast_nullable_to_non_nullable
              as SwidDefaultFormalParameter,
    ));
  }

  @override
  $SwidDefaultFormalParameterCopyWith<$Res> get swidDefaultFormalParameter {
    return $SwidDefaultFormalParameterCopyWith<$Res>(
        _value.swidDefaultFormalParameter, (value) {
      return _then(_value.copyWith(swidDefaultFormalParameter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$FromSwidDefaultFormalParameter
    extends _$FromSwidDefaultFormalParameter {
  _$_$FromSwidDefaultFormalParameter({required this.swidDefaultFormalParameter})
      : super._();

  factory _$_$FromSwidDefaultFormalParameter.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$FromSwidDefaultFormalParameterFromJson(json);

  @override
  final SwidDefaultFormalParameter swidDefaultFormalParameter;

  @override
  String toString() {
    return 'SwidType.fromSwidDefaultFormalParameter(swidDefaultFormalParameter: $swidDefaultFormalParameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidDefaultFormalParameter &&
            (identical(other.swidDefaultFormalParameter,
                    swidDefaultFormalParameter) ||
                const DeepCollectionEquality().equals(
                    other.swidDefaultFormalParameter,
                    swidDefaultFormalParameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidDefaultFormalParameter);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidDefaultFormalParameterCopyWith<_$FromSwidDefaultFormalParameter>
      get copyWith => __$$FromSwidDefaultFormalParameterCopyWithImpl<
          _$FromSwidDefaultFormalParameter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(
            SwidDefaultFormalParameter swidDefaultFormalParameter)
        fromSwidDefaultFormalParameter,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidDefaultFormalParameter(swidDefaultFormalParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidDefaultFormalParameter swidDefaultFormalParameter)?
        fromSwidDefaultFormalParameter,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidDefaultFormalParameter != null) {
      return fromSwidDefaultFormalParameter(swidDefaultFormalParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidDefaultFormalParameter value)
        fromSwidDefaultFormalParameter,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidDefaultFormalParameter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidDefaultFormalParameter value)?
        fromSwidDefaultFormalParameter,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidDefaultFormalParameter != null) {
      return fromSwidDefaultFormalParameter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidDefaultFormalParameterToJson(this)
      ..['runtimeType'] = 'fromSwidDefaultFormalParameter';
  }
}

abstract class _$FromSwidDefaultFormalParameter extends SwidType {
  factory _$FromSwidDefaultFormalParameter(
          {required SwidDefaultFormalParameter swidDefaultFormalParameter}) =
      _$_$FromSwidDefaultFormalParameter;
  _$FromSwidDefaultFormalParameter._() : super._();

  factory _$FromSwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidDefaultFormalParameter.fromJson;

  SwidDefaultFormalParameter get swidDefaultFormalParameter =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidDefaultFormalParameterCopyWith<_$FromSwidDefaultFormalParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromSwidFunctionTypeCopyWith<$Res> {
  factory _$$FromSwidFunctionTypeCopyWith(_$FromSwidFunctionType value,
          $Res Function(_$FromSwidFunctionType) then) =
      __$$FromSwidFunctionTypeCopyWithImpl<$Res>;
  $Res call({SwidFunctionType swidFunctionType});

  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType;
}

/// @nodoc
class __$$FromSwidFunctionTypeCopyWithImpl<$Res>
    extends _$SwidTypeCopyWithImpl<$Res>
    implements _$$FromSwidFunctionTypeCopyWith<$Res> {
  __$$FromSwidFunctionTypeCopyWithImpl(_$FromSwidFunctionType _value,
      $Res Function(_$FromSwidFunctionType) _then)
      : super(_value, (v) => _then(v as _$FromSwidFunctionType));

  @override
  _$FromSwidFunctionType get _value => super._value as _$FromSwidFunctionType;

  @override
  $Res call({
    Object? swidFunctionType = freezed,
  }) {
    return _then(_$FromSwidFunctionType(
      swidFunctionType: swidFunctionType == freezed
          ? _value.swidFunctionType
          : swidFunctionType // ignore: cast_nullable_to_non_nullable
              as SwidFunctionType,
    ));
  }

  @override
  $SwidFunctionTypeCopyWith<$Res> get swidFunctionType {
    return $SwidFunctionTypeCopyWith<$Res>(_value.swidFunctionType, (value) {
      return _then(_value.copyWith(swidFunctionType: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$FromSwidFunctionType extends _$FromSwidFunctionType {
  _$_$FromSwidFunctionType({required this.swidFunctionType}) : super._();

  factory _$_$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$_$_$FromSwidFunctionTypeFromJson(json);

  @override
  final SwidFunctionType swidFunctionType;

  @override
  String toString() {
    return 'SwidType.fromSwidFunctionType(swidFunctionType: $swidFunctionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidFunctionType &&
            (identical(other.swidFunctionType, swidFunctionType) ||
                const DeepCollectionEquality()
                    .equals(other.swidFunctionType, swidFunctionType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidFunctionType);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith =>
      __$$FromSwidFunctionTypeCopyWithImpl<_$FromSwidFunctionType>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidInterface swidInterface) fromSwidInterface,
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(
            SwidDefaultFormalParameter swidDefaultFormalParameter)
        fromSwidDefaultFormalParameter,
    required TResult Function(SwidFunctionType swidFunctionType)
        fromSwidFunctionType,
  }) {
    return fromSwidFunctionType(swidFunctionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidInterface swidInterface)? fromSwidInterface,
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidDefaultFormalParameter swidDefaultFormalParameter)?
        fromSwidDefaultFormalParameter,
    TResult Function(SwidFunctionType swidFunctionType)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(swidFunctionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidInterface value) fromSwidInterface,
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidDefaultFormalParameter value)
        fromSwidDefaultFormalParameter,
    required TResult Function(_$FromSwidFunctionType value)
        fromSwidFunctionType,
  }) {
    return fromSwidFunctionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidInterface value)? fromSwidInterface,
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidDefaultFormalParameter value)?
        fromSwidDefaultFormalParameter,
    TResult Function(_$FromSwidFunctionType value)? fromSwidFunctionType,
    required TResult orElse(),
  }) {
    if (fromSwidFunctionType != null) {
      return fromSwidFunctionType(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$FromSwidFunctionTypeToJson(this)
      ..['runtimeType'] = 'fromSwidFunctionType';
  }
}

abstract class _$FromSwidFunctionType extends SwidType {
  factory _$FromSwidFunctionType({required SwidFunctionType swidFunctionType}) =
      _$_$FromSwidFunctionType;
  _$FromSwidFunctionType._() : super._();

  factory _$FromSwidFunctionType.fromJson(Map<String, dynamic> json) =
      _$_$FromSwidFunctionType.fromJson;

  SwidFunctionType get swidFunctionType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidFunctionTypeCopyWith<_$FromSwidFunctionType> get copyWith =>
      throw _privateConstructorUsedError;
}
