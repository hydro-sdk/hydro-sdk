import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petitparser/debug.dart';
import 'package:petitparser/petitparser.dart';

part 'parserTestHarness.freezed.dart';

@freezed
class ParserTestHarnessInput with _$ParserTestHarnessInput {
  const factory ParserTestHarnessInput.fromString(
      {required final String input}) = _$ParserTestHarnessInputFromString;
  const factory ParserTestHarnessInput.fromList(
      {required final List<String> inputs}) = _$ParserTestHarnessInputFromList;
}

void parserTestHarness<T>({
  required final ParserTestHarnessInput input,
  required final Parser parser,
  required final T result,
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
  required final String input,
  required final Parser parser,
  required final T result,
}) {
  var res = parser.parse(input);

  if (res.isFailure) {
    trace(parser).parse(input);
    print(res.message);
    print("Failed to parse \"$input\"");
  }

  expect(res.isSuccess, true);
  expect(res.value, result);
}
