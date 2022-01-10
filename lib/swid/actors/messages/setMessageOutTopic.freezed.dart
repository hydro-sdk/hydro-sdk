// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'setMessageOutTopic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetMessageOutTopicTearOff {
  const _$SetMessageOutTopicTearOff();

  _$SetMessageOutTopicCtor call({required String topic}) {
    return _$SetMessageOutTopicCtor(
      topic: topic,
    );
  }
}

/// @nodoc
const $SetMessageOutTopic = _$SetMessageOutTopicTearOff();

/// @nodoc
mixin _$SetMessageOutTopic {
  String get topic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetMessageOutTopicCopyWith<SetMessageOutTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetMessageOutTopicCopyWith<$Res> {
  factory $SetMessageOutTopicCopyWith(
          SetMessageOutTopic value, $Res Function(SetMessageOutTopic) then) =
      _$SetMessageOutTopicCopyWithImpl<$Res>;
  $Res call({String topic});
}

/// @nodoc
class _$SetMessageOutTopicCopyWithImpl<$Res>
    implements $SetMessageOutTopicCopyWith<$Res> {
  _$SetMessageOutTopicCopyWithImpl(this._value, this._then);

  final SetMessageOutTopic _value;
  // ignore: unused_field
  final $Res Function(SetMessageOutTopic) _then;

  @override
  $Res call({
    Object? topic = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SetMessageOutTopicCtorCopyWith<$Res>
    implements $SetMessageOutTopicCopyWith<$Res> {
  factory _$$SetMessageOutTopicCtorCopyWith(_$SetMessageOutTopicCtor value,
          $Res Function(_$SetMessageOutTopicCtor) then) =
      __$$SetMessageOutTopicCtorCopyWithImpl<$Res>;
  @override
  $Res call({String topic});
}

/// @nodoc
class __$$SetMessageOutTopicCtorCopyWithImpl<$Res>
    extends _$SetMessageOutTopicCopyWithImpl<$Res>
    implements _$$SetMessageOutTopicCtorCopyWith<$Res> {
  __$$SetMessageOutTopicCtorCopyWithImpl(_$SetMessageOutTopicCtor _value,
      $Res Function(_$SetMessageOutTopicCtor) _then)
      : super(_value, (v) => _then(v as _$SetMessageOutTopicCtor));

  @override
  _$SetMessageOutTopicCtor get _value =>
      super._value as _$SetMessageOutTopicCtor;

  @override
  $Res call({
    Object? topic = freezed,
  }) {
    return _then(_$SetMessageOutTopicCtor(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$SetMessageOutTopicCtor extends _$SetMessageOutTopicCtor {
  const _$_$SetMessageOutTopicCtor({required this.topic}) : super._();

  @override
  final String topic;

  @override
  String toString() {
    return 'SetMessageOutTopic(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$SetMessageOutTopicCtor &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topic);

  @JsonKey(ignore: true)
  @override
  _$$SetMessageOutTopicCtorCopyWith<_$SetMessageOutTopicCtor> get copyWith =>
      __$$SetMessageOutTopicCtorCopyWithImpl<_$SetMessageOutTopicCtor>(
          this, _$identity);
}

abstract class _$SetMessageOutTopicCtor extends SetMessageOutTopic {
  const factory _$SetMessageOutTopicCtor({required String topic}) =
      _$_$SetMessageOutTopicCtor;
  const _$SetMessageOutTopicCtor._() : super._();

  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SetMessageOutTopicCtorCopyWith<_$SetMessageOutTopicCtor> get copyWith =>
      throw _privateConstructorUsedError;
}
