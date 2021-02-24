import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';
import 'package:petitparser/debug.dart';
import 'package:petitparser/petitparser.dart';

void parserTestHarness<T>({
  @required String input,
  @required Parser parser,
  @required T result,
}) {
  var res = parser.parse(input);

  if (res.isFailure) {
    trace(parser).parse(input);
    print(res.message);
  }

  expect(res.isSuccess, true);
  expect(res.value, result);
}
