import 'dart:convert';
import 'dart:typed_data';

import 'package:hydro_sdk/swid/util/iPbTransformable.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/swars/iSwarsTerm.dart';
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

abstract class _ISwarsTermResultFromPbTransformable<
    T extends IPbTransformable> {
  const _ISwarsTermResultFromPbTransformable();

  T get pbTransformable;
}

mixin _SwarsTermPbTransformableResult<T extends IPbTransformable>
    implements
        _ISwarsTermResultFromPbTransformable<T>,
        ISwarsTermResult<T>,
        IPbTransformable<T> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => base64.encode(this.toPb());

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  T unwrap() => pbTransformable;

  @override
  @nonVirtual
  Uint8List toPb() => pbTransformable.toPb();

  @override
  @nonVirtual
  T fromPb(final Uint8List pb) => pbTransformable.fromPb(pb) as T;
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

abstract class _ISwarsTermResultFromListPbTransformable<
    T extends IPbTransformable> {
  const _ISwarsTermResultFromListPbTransformable();

  List<T> get list;
}

mixin _SwarsTermResultFromListPbTransformable<T extends IPbTransformable>
    implements
        _ISwarsTermResultFromListPbTransformable<T>,
        ISwarsTermResult<List<T>> {
  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  String serialize() => json.encode(
        list.map(
          (x) => base64.encode(
            x.toPb(),
          ),
        ),
      );

  @override
  @nonVirtual
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<T> unwrap() => list;
}

class _FromString {
  const _FromString();

  _SwarsTermResult<String> fromString(final String string) =>
      _SwarsTermStringResultImpl(string);
}

extension SwarsTermBoolStringExtension<T extends Object, U extends Object>
    on ISwarsTerm<T, U, String> {
  _FromString get SwarsTermResult => const _FromString();
}

class _FromBool {
  const _FromBool();

  _SwarsTermResult<bool> fromBool(final bool boolean) =>
      _SwarsTermBooleanResultImpl(boolean);
}

extension SwarsTermBoolExtension<T extends Object, U extends Object>
    on ISwarsTerm<T, U, bool> {
  _FromBool get SwarsTermResult => const _FromBool();
}

class _FromJsonTransformable {
  const _FromJsonTransformable();

  _SwarsTermResult<U> fromJsonTransformable<U extends IJsonTransformable>(
          final U iJsonTransformable) =>
      _SwarsTermJsonTransformableResultImpl(iJsonTransformable);
}

extension SwarsTermJsonTransformableExtension<T extends Object,
    U extends Object, V extends IJsonTransformable> on ISwarsTerm<T, U, V> {
  _FromJsonTransformable get SwarsTermResult => const _FromJsonTransformable();
}

class _FromListJsonTransformable {
  const _FromListJsonTransformable();

  _SwarsTermResult<List<U>> fromList<U extends IJsonTransformable>(
          final List<U> list) =>
      _SwarsTermResultFromListJsonTransformableImpl(list);
}

extension SwarsTermListJsonTransformableExtension<
    T extends Object,
    U extends Object,
    V extends IJsonTransformable> on ISwarsTerm<T, U, List<V>> {
  _FromListJsonTransformable get SwarsTermResult =>
      const _FromListJsonTransformable();
}

class _FromPbTransformable {
  const _FromPbTransformable();

  _SwarsTermResult<U> fromPbTransformable<U extends IPbTransformable>(
          final U iPbTransformable) =>
      _SwarsTermPbTransformableResultImpl(iPbTransformable);
}

extension SwarsTermPbTransformableExtension<T extends Object, U extends Object,
    V extends IPbTransformable> on ISwarsTerm<T, U, V> {
  _FromPbTransformable get SwarsTermResult => const _FromPbTransformable();
}

class _FromListPbTransformable {
  const _FromListPbTransformable();

  _SwarsTermResult<List<U>> fromList<U extends IPbTransformable>(
          final List<U> list) =>
      _SwarsTermResultFromListPbTransformableImpl(list);
}

extension SwarsTermListPbTransformableExtension<T extends Object,
    U extends Object, V extends IPbTransformable> on ISwarsTerm<T, U, List<V>> {
  _FromListPbTransformable get SwarsTermResult =>
      const _FromListPbTransformable();
}

abstract class _SwarsTermResult<T extends Object>
    implements ISwarsTermResult<T> {
  const _SwarsTermResult._();
}

class _SwarsTermStringResultImpl
    with _SwarsTermStringResult
    implements _SwarsTermResult<String> {
  final String _string;

  const _SwarsTermStringResultImpl(final this._string);

  @override
  String get string => _string;
}

class _SwarsTermBooleanResultImpl
    with _SwarsTermBooleanResult
    implements _SwarsTermResult<bool> {
  final bool _boolean;

  const _SwarsTermBooleanResultImpl(final this._boolean);

  @override
  bool get boolean => _boolean;
}

class _SwarsTermJsonTransformableResultImpl<T extends IJsonTransformable>
    with _SwarsTermJsonTransformableResult<T>
    implements _SwarsTermResult<T> {
  final T _jsonTransformable;

  const _SwarsTermJsonTransformableResultImpl(final this._jsonTransformable);

  @override
  T get jsonTransformable => _jsonTransformable;
}

class _SwarsTermResultFromListJsonTransformableImpl<
        T extends IJsonTransformable>
    with _SwarsTermResultFromListJsonTransformable<T>
    implements _SwarsTermResult<List<T>> {
  final List<T> _list;

  const _SwarsTermResultFromListJsonTransformableImpl(final this._list);

  @override
  List<T> get list => _list;
}

class _SwarsTermPbTransformableResultImpl<T extends IPbTransformable>
    with _SwarsTermPbTransformableResult<T>
    implements _SwarsTermResult<T> {
  final T _pbTransformable;

  const _SwarsTermPbTransformableResultImpl(final this._pbTransformable);

  @override
  T get pbTransformable => _pbTransformable;
}

class _SwarsTermResultFromListPbTransformableImpl<T extends IPbTransformable>
    with _SwarsTermResultFromListPbTransformable<T>
    implements _SwarsTermResult<List<T>> {
  final List<T> _list;

  const _SwarsTermResultFromListPbTransformableImpl(final this._list);

  @override
  List<T> get list => _list;
}
