// Basic widget test for the class demo app.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:class_demo/main.dart';

void main() {
  testWidgets('Button renders and does nothing when pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // The button is present.
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Press me'), findsOneWidget);

    // Tapping it changes nothing and does not throw.
    await tester.tap(find.text('Press me'));
    await tester.pump();

    expect(find.text('Press me'), findsOneWidget);
  });
}
