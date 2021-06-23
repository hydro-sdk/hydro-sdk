// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';
import 'package:hydro_sdk/testMode.dart';

class Choice {
  const Choice({this.title, this.icon});
  final String? title;
  final IconData? icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Car', icon: Icons.directions_car),
  Choice(title: 'Bicycle', icon: Icons.directions_bike),
  Choice(title: 'Boat', icon: Icons.directions_boat),
  Choice(title: 'Bus', icon: Icons.directions_bus),
  Choice(title: 'Train', icon: Icons.directions_railway),
  Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key? key, this.choice}) : super(key: key);

  final Choice? choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1!;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice!.icon, size: 128.0, color: textStyle.color),
            Text(choice!.title!, style: textStyle),
          ],
        ),
      ),
    );
  }
}

int choiceCount = choices.length;
IconData? iconAt(int index) => choices[index].icon;
String? titleAt(int index) => choices[index].title;

Finder findAppBarIcon(IconData icon) {
  return find.descendant(of: find.byType(AppBar), matching: find.byIcon(icon));
}

Finder findChoiceCard(IconData icon) {
  return find.descendant(of: find.byType(Card), matching: find.byIcon(icon));
}

void main() {
  testWidgets('basic_app_bar sample smoke test', (WidgetTester tester) async {
    var testMode = getTestMode();
    expect(testMode, isNotNull);

    if (testMode != TestMode.typescript) {
      return;
    }

    await tester
        .pumpWidget(integrationTestHarness("assets/examples/basicAppBar"));
    await tester.pumpAndSettle();

    // Tap on the two action buttons and all of the overflow menu items.
    // Verify that a Card with the expected icon appears.

    await tester.tap(find.byKey(Key(iconAt(0).toString() + "button")));
    await tester.pumpAndSettle();
    expect(find.byKey(Key(iconAt(0).toString())), findsOneWidget);

    await tester.tap(find.byKey(Key(iconAt(1).toString() + "button")));
    await tester.pumpAndSettle();
    expect(find.byKey(Key(iconAt(1).toString())), findsOneWidget);

    for (int i = 2; i < choiceCount; i += 1) {
      await tester.tap(findAppBarIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text(titleAt(i)!));
      await tester.pumpAndSettle();
      expect(find.byKey(Key(iconAt(i).toString())), findsOneWidget);
    }
  }, tags: "smoke");
}
