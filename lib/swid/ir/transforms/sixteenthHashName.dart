import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'sixteenthHashName.freezed.dart';

@freezed
class SixteenthHashName
    with
        _$SixteenthHashName,
        HashKeyMixin<SixteenthHashName>,
        HashComparableMixin<SixteenthHashName>,
        SwarsTransformMixin<SixteenthHashName,
            $SixteenthHashNameCopyWith<SixteenthHashName>, String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  SixteenthHashName._();

  factory SixteenthHashName({
    required final String str,
  }) = _$SixteenthHashNameCtor;

  @override
  String get cacheGroup => "sixteenthHashName";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* str.hashableParts;
  }

  @override
  SixteenthHashName clone({
    final String? str,
  }) =>
      SixteenthHashName(
        str: str ?? this.str,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        AccumulatorSink<Digest>()
            .let(
              (output) => sha256.startChunkedConversion(output).let(
                (input) {
                  input.add(
                    str.codeUnits,
                  );

                  input.close();
                  output.close();

                  return output.events.single.toString();
                },
              ),
            )
            .let(
              (it) => String.fromCharCodes(
                it.runes.take(
                  (it.runes.length / 16).ceil(),
                ),
              ),
            ),
      );
}
