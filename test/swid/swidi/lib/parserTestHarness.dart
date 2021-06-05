import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:petitparser/debug.dart';
import 'package:petitparser/petitparser.dart';

part 'parserTestHarness.freezed.dart';

@freezed class ParserTestHarnessInput with _$ParserTestHarnessInput {
  const factory ParserTestHarnessInput.fromString({required String input}) =
      _$ParserTestHarnessInputFromString;
  const factory ParserTestHarnessInput.fromList(
      {required List<String> inputs}) = _$ParserTestHarnessInputFromList;
}

void parserTestHarness<T>({
  required ParserTestHarnessInput input,
  required Parser parser,
  required T result,
}) =>
    input.when(
        fromString: (val) => _parserTestHarness<T>(
              input: val,
              parser: parser,
              result: result,
            ),
        fromList: (val) => val.forEach(
              (e) => _parserTestHarness<T>(
                input: e,
                parser: parser,
                result: result,
              ),
            ));

void _parserTestHarness<T>({
  required String input,
  required Parser parser,
  required T result,
}) {
  var res = parser.parse(input);

  if (res.isFailure) {
    trace(parser).parse(input);
    print(res.message);
  }

  expect(res.isSuccess, true);
  expect(res.value, result);
}
