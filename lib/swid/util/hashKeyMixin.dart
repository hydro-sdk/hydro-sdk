import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
mixin HashKeyMixin<T extends Object> implements IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  late final hashKey = _sha256(hashableParts);

  @nonVirtual
  String _sha256(final Iterable<Iterable<int>> data) {
    final output = AccumulatorSink<Digest>();

    final input = sha256.startChunkedConversion(output);

    data.forEach(
      (x) => input.add(
        x.toList(),
      ),
    );

    input.close();
    output.close();

    return output.events.single.toString();
  }
}

extension StringIterable on Iterable<String> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this) {
        yield* x.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsIterable<T extends IHashKey> on Iterable<T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this) {
        yield* x.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsIterableHashablePartsFirstObjectSecondTuple<
    T extends IHashKey> on List<Tuple2<T, Object>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this) {
        yield* x.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsIterableObjectFirstHashablePartsSecondTuple<
    T extends IHashKey> on List<Tuple2<Object, T>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this) {
        yield* x.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsIterableHashablePartsFirstHashablePartsSecondTuple<
    T extends IHashKey, U extends IHashKey> on List<Tuple2<T, U>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this) {
        yield* x.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsFirstObjectSecondTuple<T extends IHashKey>
    on Tuple2<T, Object> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* item1.hashableParts;
    yield [
      item2.hashCode,
    ];
  }
}

extension ObjectFirstHashablePartsSecondTuple<T extends IHashKey>
    on Tuple2<Object, T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [
      item1.hashCode,
    ];
    yield* item2.hashableParts;
  }
}

extension HashablePartsFirstHashablePartsSecondTuple<T extends IHashKey,
    U extends IHashKey> on Tuple2<T, U> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* item1.hashableParts;
    yield* item2.hashableParts;
  }
}

extension ObjectKeyHashablePartsValueMap<T extends IHashKey> on Map<Object, T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this.entries) {
        yield [
          x.key.hashCode,
        ];
        yield* x.value.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsKeyMap<T extends IHashKey> on Map<T, Object> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this.entries) {
        yield* x.key.hashableParts;
        yield [
          x.value.hashCode,
        ];
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsKeyHashablePartsValueMap<T extends IHashKey,
    U extends IHashKey> on Map<T, U> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this.entries) {
        yield* x.key.hashableParts;

        yield* x.value.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension StringKeyStringValueMap on Map<String, String> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    if (isNotEmpty) {
      for (var x in this.entries) {
        yield* x.key.hashableParts;

        yield* x.value.hashableParts;
      }
    } else {
      yield [
        0,
      ];
    }
  }
}

extension HashablePartsString on String {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  Iterable<Iterable<int>> get hashableParts sync* {
    yield codeUnits;
  }
}

extension HashableBool on bool {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => this == true ? [1] : [0];
}
