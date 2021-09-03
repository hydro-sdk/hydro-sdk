import 'package:meta/meta.dart';
import 'package:tuple/tuple.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

import 'package:hydro_sdk/swid/util/iCloneable.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

@immutable
@optionalTypeArgs
mixin HashKeyMixin<T extends Object> implements IHashKey, ICloneable<T> {
  @nonVirtual
  @override
  late final hashKey = _sha256(hashableParts);

  @nonVirtual
  String _sha256(final List<int> data) {
    final output = AccumulatorSink<Digest>();

    final input = sha256.startChunkedConversion(output);

    input.add(data);

    input.close();
    output.close();

    return output.events.single.toString();
  }
}

extension StringIterable on Iterable<String> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => isNotEmpty
      ? map((x) => x.hashableParts).reduce((value, element) => [
            ...value,
            ...element,
          ])
      : [
          0,
        ];
}

extension HashablePartsIterable<T extends IHashKey> on Iterable<T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => isNotEmpty
      ? map((x) => x.hashableParts).reduce((value, element) => [
            ...value,
            ...element,
          ])
      : [
          0,
        ];
}

extension HashablePartsIterableHashablePartsFirstObjectSecondTuple<
    T extends IHashKey> on List<Tuple2<T, Object>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => isNotEmpty
      ? map((x) => x.hashableParts).reduce((value, element) => [
            ...value,
            ...element,
          ])
      : [
          0,
        ];
}

extension HashablePartsIterableObjectFirstHashablePartsSecondTuple<
    T extends IHashKey> on List<Tuple2<Object, T>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => isNotEmpty
      ? map((x) => x.hashableParts).reduce((value, element) => [
            ...value,
            ...element,
          ])
      : [
          0,
        ];
}

extension HashablePartsIterableHashablePartsFirstHashablePartsSecondTuple<
    T extends IHashKey, U extends IHashKey> on List<Tuple2<T, U>> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => isNotEmpty
      ? map((x) => x.hashableParts).reduce((value, element) => [
            ...value,
            ...element,
          ])
      : [
          0,
        ];
}

extension HashablePartsFirstObjectSecondTuple<T extends IHashKey>
    on Tuple2<T, Object> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => [
        ...item1.hashableParts,
        item2.hashCode,
      ];
}

extension ObjectFirstHashablePartsSecondTuple<T extends IHashKey>
    on Tuple2<Object, T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => [
        item1.hashCode,
        ...item2.hashableParts,
      ];
}

extension HashablePartsFirstHashablePartsSecondTuple<T extends IHashKey,
    U extends IHashKey> on Tuple2<T, U> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => [
        ...item1.hashableParts,
        ...item2.hashableParts,
      ];
}

extension ObjectKeyHashablePartsValueMap<T extends IHashKey> on Map<Object, T> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => ((
        Iterable<List<int>> iterable,
      ) =>
          iterable.isNotEmpty
              ? iterable.reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
              : <int>[])(
        entries.map(
          (x) => [
            x.key.hashCode,
            ...x.value.hashableParts,
          ],
        ),
      );
}

extension HashablePartsKeyMap<T extends IHashKey> on Map<T, Object> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => ((
        Iterable<List<int>> iterable,
      ) =>
          iterable.isNotEmpty
              ? iterable.reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
              : <int>[])(
        entries.map(
          (x) => [
            ...x.key.hashableParts,
            x.value.hashCode,
          ],
        ),
      );
}

extension HashablePartsKeyHashablePartsValueMap<T extends IHashKey,
    U extends IHashKey> on Map<T, U> {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => ((
        Iterable<List<int>> iterable,
      ) =>
          iterable.isNotEmpty
              ? iterable.reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
              : <int>[])(
        entries.map(
          (x) => [
            ...x.key.hashableParts,
            ...x.value.hashableParts,
          ],
        ),
      );
}

extension HashablePartsString on String {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => codeUnits;
}

extension HashableBool on bool {
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  List<int> get hashableParts => this == true ? [1] : [0];
}
