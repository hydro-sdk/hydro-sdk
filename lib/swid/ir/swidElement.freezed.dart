// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'swidElement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwidElement _$SwidElementFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'fromSwidTypeArgumentElement':
      return _$SwidElementFromSwidTypeArgumentElement.fromJson(json);
    case 'fromSwidInterfaceElement':
      return _$SwidElementFromSwidInterfaceElement.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SwidElementTearOff {
  const _$SwidElementTearOff();

  _$SwidElementFromSwidTypeArgumentElement fromSwidTypeArgumentElement(
      {required SwidTypeArgumentElement swidTypeArgumentElement}) {
    return _$SwidElementFromSwidTypeArgumentElement(
      swidTypeArgumentElement: swidTypeArgumentElement,
    );
  }

  _$SwidElementFromSwidInterfaceElement fromSwidInterfaceElement(
      {required SwidInterfaceElement swidInterfaceElement}) {
    return _$SwidElementFromSwidInterfaceElement(
      swidInterfaceElement: swidInterfaceElement,
    );
  }

  SwidElement fromJson(Map<String, Object> json) {
    return SwidElement.fromJson(json);
  }
}

/// @nodoc
const $SwidElement = _$SwidElementTearOff();

/// @nodoc
mixin _$SwidElement {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)
        fromSwidTypeArgumentElement,
    required TResult Function(SwidInterfaceElement swidInterfaceElement)
        fromSwidInterfaceElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)?
        fromSwidTypeArgumentElement,
    TResult Function(SwidInterfaceElement swidInterfaceElement)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidElementFromSwidTypeArgumentElement value)
        fromSwidTypeArgumentElement,
    required TResult Function(_$SwidElementFromSwidInterfaceElement value)
        fromSwidInterfaceElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidElementFromSwidTypeArgumentElement value)?
        fromSwidTypeArgumentElement,
    TResult Function(_$SwidElementFromSwidInterfaceElement value)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwidElementCopyWith<$Res> {
  factory $SwidElementCopyWith(
          SwidElement value, $Res Function(SwidElement) then) =
      _$SwidElementCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwidElementCopyWithImpl<$Res> implements $SwidElementCopyWith<$Res> {
  _$SwidElementCopyWithImpl(this._value, this._then);

  final SwidElement _value;
  // ignore: unused_field
  final $Res Function(SwidElement) _then;
}

/// @nodoc
abstract class _$$SwidElementFromSwidTypeArgumentElementCopyWith<$Res> {
  factory _$$SwidElementFromSwidTypeArgumentElementCopyWith(
          _$SwidElementFromSwidTypeArgumentElement value,
          $Res Function(_$SwidElementFromSwidTypeArgumentElement) then) =
      __$$SwidElementFromSwidTypeArgumentElementCopyWithImpl<$Res>;
  $Res call({SwidTypeArgumentElement swidTypeArgumentElement});

  $SwidTypeArgumentElementCopyWith<$Res> get swidTypeArgumentElement;
}

/// @nodoc
class __$$SwidElementFromSwidTypeArgumentElementCopyWithImpl<$Res>
    extends _$SwidElementCopyWithImpl<$Res>
    implements _$$SwidElementFromSwidTypeArgumentElementCopyWith<$Res> {
  __$$SwidElementFromSwidTypeArgumentElementCopyWithImpl(
      _$SwidElementFromSwidTypeArgumentElement _value,
      $Res Function(_$SwidElementFromSwidTypeArgumentElement) _then)
      : super(_value,
            (v) => _then(v as _$SwidElementFromSwidTypeArgumentElement));

  @override
  _$SwidElementFromSwidTypeArgumentElement get _value =>
      super._value as _$SwidElementFromSwidTypeArgumentElement;

  @override
  $Res call({
    Object? swidTypeArgumentElement = freezed,
  }) {
    return _then(_$SwidElementFromSwidTypeArgumentElement(
      swidTypeArgumentElement: swidTypeArgumentElement == freezed
          ? _value.swidTypeArgumentElement
          : swidTypeArgumentElement // ignore: cast_nullable_to_non_nullable
              as SwidTypeArgumentElement,
    ));
  }

  @override
  $SwidTypeArgumentElementCopyWith<$Res> get swidTypeArgumentElement {
    return $SwidTypeArgumentElementCopyWith<$Res>(
        _value.swidTypeArgumentElement, (value) {
      return _then(_value.copyWith(swidTypeArgumentElement: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidElementFromSwidTypeArgumentElement
    extends _$SwidElementFromSwidTypeArgumentElement {
  _$_$SwidElementFromSwidTypeArgumentElement(
      {required this.swidTypeArgumentElement})
      : super._();

  factory _$_$SwidElementFromSwidTypeArgumentElement.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidElementFromSwidTypeArgumentElementFromJson(json);

  @override
  final SwidTypeArgumentElement swidTypeArgumentElement;

  @override
  String toString() {
    return 'SwidElement.fromSwidTypeArgumentElement(swidTypeArgumentElement: $swidTypeArgumentElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidElementFromSwidTypeArgumentElement &&
            (identical(
                    other.swidTypeArgumentElement, swidTypeArgumentElement) ||
                const DeepCollectionEquality().equals(
                    other.swidTypeArgumentElement, swidTypeArgumentElement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidTypeArgumentElement);

  @JsonKey(ignore: true)
  @override
  _$$SwidElementFromSwidTypeArgumentElementCopyWith<
          _$SwidElementFromSwidTypeArgumentElement>
      get copyWith => __$$SwidElementFromSwidTypeArgumentElementCopyWithImpl<
          _$SwidElementFromSwidTypeArgumentElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)
        fromSwidTypeArgumentElement,
    required TResult Function(SwidInterfaceElement swidInterfaceElement)
        fromSwidInterfaceElement,
  }) {
    return fromSwidTypeArgumentElement(swidTypeArgumentElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)?
        fromSwidTypeArgumentElement,
    TResult Function(SwidInterfaceElement swidInterfaceElement)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) {
    if (fromSwidTypeArgumentElement != null) {
      return fromSwidTypeArgumentElement(swidTypeArgumentElement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidElementFromSwidTypeArgumentElement value)
        fromSwidTypeArgumentElement,
    required TResult Function(_$SwidElementFromSwidInterfaceElement value)
        fromSwidInterfaceElement,
  }) {
    return fromSwidTypeArgumentElement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidElementFromSwidTypeArgumentElement value)?
        fromSwidTypeArgumentElement,
    TResult Function(_$SwidElementFromSwidInterfaceElement value)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) {
    if (fromSwidTypeArgumentElement != null) {
      return fromSwidTypeArgumentElement(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidElementFromSwidTypeArgumentElementToJson(this)
      ..['runtimeType'] = 'fromSwidTypeArgumentElement';
  }
}

abstract class _$SwidElementFromSwidTypeArgumentElement extends SwidElement {
  factory _$SwidElementFromSwidTypeArgumentElement(
          {required SwidTypeArgumentElement swidTypeArgumentElement}) =
      _$_$SwidElementFromSwidTypeArgumentElement;
  _$SwidElementFromSwidTypeArgumentElement._() : super._();

  factory _$SwidElementFromSwidTypeArgumentElement.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidElementFromSwidTypeArgumentElement.fromJson;

  SwidTypeArgumentElement get swidTypeArgumentElement =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidElementFromSwidTypeArgumentElementCopyWith<
          _$SwidElementFromSwidTypeArgumentElement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwidElementFromSwidInterfaceElementCopyWith<$Res> {
  factory _$$SwidElementFromSwidInterfaceElementCopyWith(
          _$SwidElementFromSwidInterfaceElement value,
          $Res Function(_$SwidElementFromSwidInterfaceElement) then) =
      __$$SwidElementFromSwidInterfaceElementCopyWithImpl<$Res>;
  $Res call({SwidInterfaceElement swidInterfaceElement});

  $SwidInterfaceElementCopyWith<$Res> get swidInterfaceElement;
}

/// @nodoc
class __$$SwidElementFromSwidInterfaceElementCopyWithImpl<$Res>
    extends _$SwidElementCopyWithImpl<$Res>
    implements _$$SwidElementFromSwidInterfaceElementCopyWith<$Res> {
  __$$SwidElementFromSwidInterfaceElementCopyWithImpl(
      _$SwidElementFromSwidInterfaceElement _value,
      $Res Function(_$SwidElementFromSwidInterfaceElement) _then)
      : super(_value, (v) => _then(v as _$SwidElementFromSwidInterfaceElement));

  @override
  _$SwidElementFromSwidInterfaceElement get _value =>
      super._value as _$SwidElementFromSwidInterfaceElement;

  @override
  $Res call({
    Object? swidInterfaceElement = freezed,
  }) {
    return _then(_$SwidElementFromSwidInterfaceElement(
      swidInterfaceElement: swidInterfaceElement == freezed
          ? _value.swidInterfaceElement
          : swidInterfaceElement // ignore: cast_nullable_to_non_nullable
              as SwidInterfaceElement,
    ));
  }

  @override
  $SwidInterfaceElementCopyWith<$Res> get swidInterfaceElement {
    return $SwidInterfaceElementCopyWith<$Res>(_value.swidInterfaceElement,
        (value) {
      return _then(_value.copyWith(swidInterfaceElement: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_$SwidElementFromSwidInterfaceElement
    extends _$SwidElementFromSwidInterfaceElement {
  _$_$SwidElementFromSwidInterfaceElement({required this.swidInterfaceElement})
      : super._();

  factory _$_$SwidElementFromSwidInterfaceElement.fromJson(
          Map<String, dynamic> json) =>
      _$_$_$SwidElementFromSwidInterfaceElementFromJson(json);

  @override
  final SwidInterfaceElement swidInterfaceElement;

  @override
  String toString() {
    return 'SwidElement.fromSwidInterfaceElement(swidInterfaceElement: $swidInterfaceElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SwidElementFromSwidInterfaceElement &&
            (identical(other.swidInterfaceElement, swidInterfaceElement) ||
                const DeepCollectionEquality()
                    .equals(other.swidInterfaceElement, swidInterfaceElement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(swidInterfaceElement);

  @JsonKey(ignore: true)
  @override
  _$$SwidElementFromSwidInterfaceElementCopyWith<
          _$SwidElementFromSwidInterfaceElement>
      get copyWith => __$$SwidElementFromSwidInterfaceElementCopyWithImpl<
          _$SwidElementFromSwidInterfaceElement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)
        fromSwidTypeArgumentElement,
    required TResult Function(SwidInterfaceElement swidInterfaceElement)
        fromSwidInterfaceElement,
  }) {
    return fromSwidInterfaceElement(swidInterfaceElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SwidTypeArgumentElement swidTypeArgumentElement)?
        fromSwidTypeArgumentElement,
    TResult Function(SwidInterfaceElement swidInterfaceElement)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) {
    if (fromSwidInterfaceElement != null) {
      return fromSwidInterfaceElement(swidInterfaceElement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$SwidElementFromSwidTypeArgumentElement value)
        fromSwidTypeArgumentElement,
    required TResult Function(_$SwidElementFromSwidInterfaceElement value)
        fromSwidInterfaceElement,
  }) {
    return fromSwidInterfaceElement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$SwidElementFromSwidTypeArgumentElement value)?
        fromSwidTypeArgumentElement,
    TResult Function(_$SwidElementFromSwidInterfaceElement value)?
        fromSwidInterfaceElement,
    required TResult orElse(),
  }) {
    if (fromSwidInterfaceElement != null) {
      return fromSwidInterfaceElement(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_$SwidElementFromSwidInterfaceElementToJson(this)
      ..['runtimeType'] = 'fromSwidInterfaceElement';
  }
}

abstract class _$SwidElementFromSwidInterfaceElement extends SwidElement {
  factory _$SwidElementFromSwidInterfaceElement(
          {required SwidInterfaceElement swidInterfaceElement}) =
      _$_$SwidElementFromSwidInterfaceElement;
  _$SwidElementFromSwidInterfaceElement._() : super._();

  factory _$SwidElementFromSwidInterfaceElement.fromJson(
          Map<String, dynamic> json) =
      _$_$SwidElementFromSwidInterfaceElement.fromJson;

  SwidInterfaceElement get swidInterfaceElement =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SwidElementFromSwidInterfaceElementCopyWith<
          _$SwidElementFromSwidInterfaceElement>
      get copyWith => throw _privateConstructorUsedError;
}
