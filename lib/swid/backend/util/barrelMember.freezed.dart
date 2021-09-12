// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'barrelMember.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BarrelMemberTearOff {
  const _$BarrelMemberTearOff();

  _$FromSwidClass fromSwidClass({required SwidClass swidClass}) {
    return _$FromSwidClass(
      swidClass: swidClass,
    );
  }

  _$FromSwidEnum fromSwidEnum({required SwidEnum swidEnum}) {
    return _$FromSwidEnum(
      swidEnum: swidEnum,
    );
  }

  _$FromBarrelSpec fromBarrelSpec({required BarrelSpec barrelSpec}) {
    return _$FromBarrelSpec(
      barrelSpec: barrelSpec,
    );
  }
}

/// @nodoc
const $BarrelMember = _$BarrelMemberTearOff();

/// @nodoc
mixin _$BarrelMember {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(BarrelSpec barrelSpec) fromBarrelSpec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(BarrelSpec barrelSpec)? fromBarrelSpec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidEnum value) fromSwidEnum,
    required TResult Function(_$FromBarrelSpec value) fromBarrelSpec,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidEnum value)? fromSwidEnum,
    TResult Function(_$FromBarrelSpec value)? fromBarrelSpec,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarrelMemberCopyWith<$Res> {
  factory $BarrelMemberCopyWith(
          BarrelMember value, $Res Function(BarrelMember) then) =
      _$BarrelMemberCopyWithImpl<$Res>;
}

/// @nodoc
class _$BarrelMemberCopyWithImpl<$Res> implements $BarrelMemberCopyWith<$Res> {
  _$BarrelMemberCopyWithImpl(this._value, this._then);

  final BarrelMember _value;
  // ignore: unused_field
  final $Res Function(BarrelMember) _then;
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
class __$$FromSwidClassCopyWithImpl<$Res>
    extends _$BarrelMemberCopyWithImpl<$Res>
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

class _$_$FromSwidClass extends _$FromSwidClass {
  _$_$FromSwidClass({required this.swidClass}) : super._();

  @override
  final SwidClass swidClass;

  @override
  String toString() {
    return 'BarrelMember.fromSwidClass(swidClass: $swidClass)';
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
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(BarrelSpec barrelSpec) fromBarrelSpec,
  }) {
    return fromSwidClass(swidClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(BarrelSpec barrelSpec)? fromBarrelSpec,
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
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidEnum value) fromSwidEnum,
    required TResult Function(_$FromBarrelSpec value) fromBarrelSpec,
  }) {
    return fromSwidClass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidEnum value)? fromSwidEnum,
    TResult Function(_$FromBarrelSpec value)? fromBarrelSpec,
    required TResult orElse(),
  }) {
    if (fromSwidClass != null) {
      return fromSwidClass(this);
    }
    return orElse();
  }
}

abstract class _$FromSwidClass extends BarrelMember {
  factory _$FromSwidClass({required SwidClass swidClass}) = _$_$FromSwidClass;
  _$FromSwidClass._() : super._();

  SwidClass get swidClass => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidClassCopyWith<_$FromSwidClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromSwidEnumCopyWith<$Res> {
  factory _$$FromSwidEnumCopyWith(
          _$FromSwidEnum value, $Res Function(_$FromSwidEnum) then) =
      __$$FromSwidEnumCopyWithImpl<$Res>;
  $Res call({SwidEnum swidEnum});

  $SwidEnumCopyWith<$Res> get swidEnum;
}

/// @nodoc
class __$$FromSwidEnumCopyWithImpl<$Res>
    extends _$BarrelMemberCopyWithImpl<$Res>
    implements _$$FromSwidEnumCopyWith<$Res> {
  __$$FromSwidEnumCopyWithImpl(
      _$FromSwidEnum _value, $Res Function(_$FromSwidEnum) _then)
      : super(_value, (v) => _then(v as _$FromSwidEnum));

  @override
  _$FromSwidEnum get _value => super._value as _$FromSwidEnum;

  @override
  $Res call({
    Object? swidEnum = freezed,
  }) {
    return _then(_$FromSwidEnum(
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

class _$_$FromSwidEnum extends _$FromSwidEnum {
  _$_$FromSwidEnum({required this.swidEnum}) : super._();

  @override
  final SwidEnum swidEnum;

  @override
  String toString() {
    return 'BarrelMember.fromSwidEnum(swidEnum: $swidEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromSwidEnum &&
            (identical(other.swidEnum, swidEnum) ||
                const DeepCollectionEquality()
                    .equals(other.swidEnum, swidEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(swidEnum);

  @JsonKey(ignore: true)
  @override
  _$$FromSwidEnumCopyWith<_$FromSwidEnum> get copyWith =>
      __$$FromSwidEnumCopyWithImpl<_$FromSwidEnum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(BarrelSpec barrelSpec) fromBarrelSpec,
  }) {
    return fromSwidEnum(swidEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(BarrelSpec barrelSpec)? fromBarrelSpec,
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
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidEnum value) fromSwidEnum,
    required TResult Function(_$FromBarrelSpec value) fromBarrelSpec,
  }) {
    return fromSwidEnum(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidEnum value)? fromSwidEnum,
    TResult Function(_$FromBarrelSpec value)? fromBarrelSpec,
    required TResult orElse(),
  }) {
    if (fromSwidEnum != null) {
      return fromSwidEnum(this);
    }
    return orElse();
  }
}

abstract class _$FromSwidEnum extends BarrelMember {
  factory _$FromSwidEnum({required SwidEnum swidEnum}) = _$_$FromSwidEnum;
  _$FromSwidEnum._() : super._();

  SwidEnum get swidEnum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromSwidEnumCopyWith<_$FromSwidEnum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromBarrelSpecCopyWith<$Res> {
  factory _$$FromBarrelSpecCopyWith(
          _$FromBarrelSpec value, $Res Function(_$FromBarrelSpec) then) =
      __$$FromBarrelSpecCopyWithImpl<$Res>;
  $Res call({BarrelSpec barrelSpec});

  $BarrelSpecCopyWith<$Res> get barrelSpec;
}

/// @nodoc
class __$$FromBarrelSpecCopyWithImpl<$Res>
    extends _$BarrelMemberCopyWithImpl<$Res>
    implements _$$FromBarrelSpecCopyWith<$Res> {
  __$$FromBarrelSpecCopyWithImpl(
      _$FromBarrelSpec _value, $Res Function(_$FromBarrelSpec) _then)
      : super(_value, (v) => _then(v as _$FromBarrelSpec));

  @override
  _$FromBarrelSpec get _value => super._value as _$FromBarrelSpec;

  @override
  $Res call({
    Object? barrelSpec = freezed,
  }) {
    return _then(_$FromBarrelSpec(
      barrelSpec: barrelSpec == freezed
          ? _value.barrelSpec
          : barrelSpec // ignore: cast_nullable_to_non_nullable
              as BarrelSpec,
    ));
  }

  @override
  $BarrelSpecCopyWith<$Res> get barrelSpec {
    return $BarrelSpecCopyWith<$Res>(_value.barrelSpec, (value) {
      return _then(_value.copyWith(barrelSpec: value));
    });
  }
}

/// @nodoc

class _$_$FromBarrelSpec extends _$FromBarrelSpec {
  _$_$FromBarrelSpec({required this.barrelSpec}) : super._();

  @override
  final BarrelSpec barrelSpec;

  @override
  String toString() {
    return 'BarrelMember.fromBarrelSpec(barrelSpec: $barrelSpec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromBarrelSpec &&
            (identical(other.barrelSpec, barrelSpec) ||
                const DeepCollectionEquality()
                    .equals(other.barrelSpec, barrelSpec)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(barrelSpec);

  @JsonKey(ignore: true)
  @override
  _$$FromBarrelSpecCopyWith<_$FromBarrelSpec> get copyWith =>
      __$$FromBarrelSpecCopyWithImpl<_$FromBarrelSpec>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidClass swidClass) fromSwidClass,
    required TResult Function(SwidEnum swidEnum) fromSwidEnum,
    required TResult Function(BarrelSpec barrelSpec) fromBarrelSpec,
  }) {
    return fromBarrelSpec(barrelSpec);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidClass swidClass)? fromSwidClass,
    TResult Function(SwidEnum swidEnum)? fromSwidEnum,
    TResult Function(BarrelSpec barrelSpec)? fromBarrelSpec,
    required TResult orElse(),
  }) {
    if (fromBarrelSpec != null) {
      return fromBarrelSpec(barrelSpec);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$FromSwidClass value) fromSwidClass,
    required TResult Function(_$FromSwidEnum value) fromSwidEnum,
    required TResult Function(_$FromBarrelSpec value) fromBarrelSpec,
  }) {
    return fromBarrelSpec(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$FromSwidClass value)? fromSwidClass,
    TResult Function(_$FromSwidEnum value)? fromSwidEnum,
    TResult Function(_$FromBarrelSpec value)? fromBarrelSpec,
    required TResult orElse(),
  }) {
    if (fromBarrelSpec != null) {
      return fromBarrelSpec(this);
    }
    return orElse();
  }
}

abstract class _$FromBarrelSpec extends BarrelMember {
  factory _$FromBarrelSpec({required BarrelSpec barrelSpec}) =
      _$_$FromBarrelSpec;
  _$FromBarrelSpec._() : super._();

  BarrelSpec get barrelSpec => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromBarrelSpecCopyWith<_$FromBarrelSpec> get copyWith =>
      throw _privateConstructorUsedError;
}
