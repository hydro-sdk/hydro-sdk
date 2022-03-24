// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'actorCompleteMessageOut.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActorCompleteMessageOutTearOff {
  const _$ActorCompleteMessageOutTearOff();

  _$ActorCompleteMessageOutCtor call({required String sender}) {
    return _$ActorCompleteMessageOutCtor(
      sender: sender,
    );
  }
}

/// @nodoc
const $ActorCompleteMessageOut = _$ActorCompleteMessageOutTearOff();

/// @nodoc
mixin _$ActorCompleteMessageOut {
  String get sender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActorCompleteMessageOutCopyWith<ActorCompleteMessageOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCompleteMessageOutCopyWith<$Res> {
  factory $ActorCompleteMessageOutCopyWith(ActorCompleteMessageOut value,
          $Res Function(ActorCompleteMessageOut) then) =
      _$ActorCompleteMessageOutCopyWithImpl<$Res>;
  $Res call({String sender});
}

/// @nodoc
class _$ActorCompleteMessageOutCopyWithImpl<$Res>
    implements $ActorCompleteMessageOutCopyWith<$Res> {
  _$ActorCompleteMessageOutCopyWithImpl(this._value, this._then);

  final ActorCompleteMessageOut _value;
  // ignore: unused_field
  final $Res Function(ActorCompleteMessageOut) _then;

  @override
  $Res call({
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ActorCompleteMessageOutCtorCopyWith<$Res>
    implements $ActorCompleteMessageOutCopyWith<$Res> {
  factory _$$ActorCompleteMessageOutCtorCopyWith(
          _$ActorCompleteMessageOutCtor value,
          $Res Function(_$ActorCompleteMessageOutCtor) then) =
      __$$ActorCompleteMessageOutCtorCopyWithImpl<$Res>;
  @override
  $Res call({String sender});
}

/// @nodoc
class __$$ActorCompleteMessageOutCtorCopyWithImpl<$Res>
    extends _$ActorCompleteMessageOutCopyWithImpl<$Res>
    implements _$$ActorCompleteMessageOutCtorCopyWith<$Res> {
  __$$ActorCompleteMessageOutCtorCopyWithImpl(
      _$ActorCompleteMessageOutCtor _value,
      $Res Function(_$ActorCompleteMessageOutCtor) _then)
      : super(_value, (v) => _then(v as _$ActorCompleteMessageOutCtor));

  @override
  _$ActorCompleteMessageOutCtor get _value =>
      super._value as _$ActorCompleteMessageOutCtor;

  @override
  $Res call({
    Object? sender = freezed,
  }) {
    return _then(_$ActorCompleteMessageOutCtor(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ActorCompleteMessageOutCtor extends _$ActorCompleteMessageOutCtor {
  const _$_$ActorCompleteMessageOutCtor({required this.sender}) : super._();

  @override
  final String sender;

  @override
  String toString() {
    return 'ActorCompleteMessageOut(sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$ActorCompleteMessageOutCtor &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sender);

  @JsonKey(ignore: true)
  @override
  _$$ActorCompleteMessageOutCtorCopyWith<_$ActorCompleteMessageOutCtor>
      get copyWith => __$$ActorCompleteMessageOutCtorCopyWithImpl<
          _$ActorCompleteMessageOutCtor>(this, _$identity);
}

abstract class _$ActorCompleteMessageOutCtor extends ActorCompleteMessageOut {
  const factory _$ActorCompleteMessageOutCtor({required String sender}) =
      _$_$ActorCompleteMessageOutCtor;
  const _$ActorCompleteMessageOutCtor._() : super._();

  @override
  String get sender => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ActorCompleteMessageOutCtorCopyWith<_$ActorCompleteMessageOutCtor>
      get copyWith => throw _privateConstructorUsedError;
}
