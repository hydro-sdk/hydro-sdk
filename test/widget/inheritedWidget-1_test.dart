import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart' as harness;
import 'package:hydro_sdk/testMode.dart';

class Inherited extends InheritedWidget {
  Inherited({
    @required this.message,
    @required Widget child,
  }) : super(child: child);

  final String message;

  static Inherited of(
    BuildContext context, {
    @required bool listen,
  }) {
    return listen
        ? context.inheritFromWidgetOfExactType(Inherited)
        : context
            .ancestorInheritedElementForWidgetOfExactType(Inherited)
            ?.widget;
  }

  @override
  bool updateShouldNotify(Inherited old) => message != old.message;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Inherited(
      message: "inherited message",
      child: InnerApp(),
    );
  }
}

class InnerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inherited = Inherited.of(context, listen: false);
    return Container(
      key: Key(inherited.message),
    );
  }
}

void main() {
  testWidgets('inherited widget test', (WidgetTester tester) async {
    harness.main("assets/test/widget/inheritedWidget-1.ts.hc");
    await tester.pump();

    expect(find.byKey(Key("inherited message")), findsOneWidget);

    // runApp(App());

    // expect(find.byKey(Key("inherited message")), findsOneWidget);
  });
}
