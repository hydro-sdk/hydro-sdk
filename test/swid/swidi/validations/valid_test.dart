import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import '../lib/validatorTestHarness.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    [[ ignoreTransform(@"referenceRewriting") ]]
    void::void foo(
      "dart:core"::class::int bar, {
        "dart:core"::class::int baz,
        "dart:core"::class::int? qux,
    });
  }
""",
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo() -> {
      @"tsClassMethodDeclaration" : @"bar",
    };
  }
""",
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo() -> {
      @"tsClassMethodDeclaration" : true,
    };
  }
""",
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "package:flutter/src/widgets/icon_data.dart"::IconData {
    void::void foo() -> {
      @"tsClassMethodDeclaration" : false,
    };
  }
""",
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "dart:core"::List {
  static "dart:core"::class::List<T> fromArray<T extends "dart:core"::class::Object?>([
    [[ ignoreTransform(@"referenceRewriting") ]]
    [[ ignoreAnalysis(@"referenceCollection") ]]
    class::Array<T>? array,
  ]) -> {
    @"tsClassMethodDeclaration" : @"if(array!==undefined){return List.from<T>(array as any,{}) as List<T>;}return List.from<T>([] as any,{}) as List<T>}",
  };
}
      """,
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "dart:async"::AsyncError {
  "dart:core"::class::StackTrace stackTrace() -> {
    @"isGetter": true,
  };
}
      """,
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "dart:async"::AsyncError {
  "dart:core"::class::StackTrace stackTrace() -> {
    @"isGetter": false,
  };
}
      """,
      expectation: const SwidiClassValidationState.valid(),
    );

    validatorTestHarness(
      input: """
class "dart:async"::Future {
  "dart:async"::class::Future<type::R> then<R extends "dart:core"::class::Object?>(
    Function type::R (type::T) onValue, {
      Function "dart:async"::class::FutureOr<type::R> (dynamic::dynamic, "dart:core"::class::StackTrace)? onError,
  });
}
      """,
      expectation: const SwidiClassValidationState.valid(),
    );
  }, tags: "swid");
}
