import 'dart:convert';

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

abstract class ISwarsTermResult<T extends Object> {
  const ISwarsTermResult();

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize();

  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  T unwrap();
}

abstract class _ISwarsTermResultFromString {
  const _ISwarsTermResultFromString();

  String get string;
}

abstract class _ISwarsTermResultFromBoolean {
  const _ISwarsTermResultFromBoolean();

  bool get boolean;
}

mixin _SwarsTermBooleanResult
    implements _ISwarsTermResultFromBoolean, ISwarsTermResult<bool> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => boolean.toString();

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  bool unwrap() => boolean;
}

mixin _SwarsTermStringResult
    implements _ISwarsTermResultFromString, ISwarsTermResult<String> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => string;

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String unwrap() => string;
}

abstract class _ISwarsTermResultFromJsonTransformable<
    T extends IJsonTransformable> {
  const _ISwarsTermResultFromJsonTransformable();

  T get jsonTransformable;
}

mixin _SwarsTermJsonTransformableResult<T extends IJsonTransformable>
    implements
        _ISwarsTermResultFromJsonTransformable<T>,
        ISwarsTermResult<T>,
        IJsonTransformable<T> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => json.encode(this.toJson());

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  T unwrap() => jsonTransformable;

  @override
  @nonVirtual
  Map<String, dynamic> toJson() => jsonTransformable.toJson();

  @override
  @nonVirtual
  T fromJson(final Map<String, dynamic> json) =>
      jsonTransformable.fromJson(json) as T;
}

abstract class _ISwarsTermResultFromListJsonTransformable<
    T extends IJsonTransformable> {
  const _ISwarsTermResultFromListJsonTransformable();

  List<T> get list;
}

mixin _SwarsTermResultFromListJsonTransformable<T extends IJsonTransformable>
    implements
        _ISwarsTermResultFromListJsonTransformable<T>,
        ISwarsTermResult<List<T>> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => json.encode(list);

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<T> unwrap() => list;
}

abstract class SwarsTermResult<T extends Object>
    implements ISwarsTermResult<T> {
  const SwarsTermResult._();

  static SwarsTermResult<bool> fromBool(final bool boolean) =>
      _SwarsTermBooleanResultImpl(boolean);

  static SwarsTermResult<String> fromString(final String string) =>
      _SwarsTermStringResultImpl(string);

  static SwarsTermResult<U> fromJsonTransformable<U extends IJsonTransformable>(
          final U iJsonTransformable) =>
      _SwarsTermJsonTransformableResultImpl(iJsonTransformable);

  static SwarsTermResult<List<U>> fromList<U extends IJsonTransformable>(
          final List<U> list) =>
      _SwarsTermResultFromListJsonTransformableImpl(list);
}

class _SwarsTermStringResultImpl
    with _SwarsTermStringResult
    implements SwarsTermResult<String> {
  final String _string;

  const _SwarsTermStringResultImpl(final this._string);

  @override
  String get string => _string;
}

class _SwarsTermBooleanResultImpl
    with _SwarsTermBooleanResult
    implements SwarsTermResult<bool> {
  final bool _boolean;

  const _SwarsTermBooleanResultImpl(final this._boolean);

  @override
  bool get boolean => _boolean;
}

class _SwarsTermJsonTransformableResultImpl<T extends IJsonTransformable>
    with _SwarsTermJsonTransformableResult<T>
    implements SwarsTermResult<T> {
  final T _jsonTransformable;

  const _SwarsTermJsonTransformableResultImpl(final this._jsonTransformable);

  @override
  T get jsonTransformable => _jsonTransformable;
}

class _SwarsTermResultFromListJsonTransformableImpl<
        T extends IJsonTransformable>
    with _SwarsTermResultFromListJsonTransformable<T>
    implements SwarsTermResult<List<T>> {
  final List<T> _list;

  const _SwarsTermResultFromListJsonTransformableImpl(final this._list);

  @override
  List<T> get list => _list;
}
