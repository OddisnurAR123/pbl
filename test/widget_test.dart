import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_module_1/main.dart'; // Pastikan nama file ini sesuai dengan proyek Anda

void main() {
  testWidgets('Activity Page displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the main title appears.
    expect(find.text('Sistem Manajemen Sumber Daya Manusia'), findsOneWidget);

    // Verify the search bar exists.
    expect(find.byType(TextField), findsOneWidget);

    // Verify the activity cards are displayed.
    expect(find.byType(ActivityCard), findsNWidgets(3)); // Adjust the number based on your data

    // Verify that "Terima" button is present.
    expect(find.text('Terima'), findsWidgets);

    // Verify that "Tolak" button is present.
    expect(find.text('Tolak'), findsWidgets);
  });

  testWidgets('Clicking buttons in ActivityCard works', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the first "Terima" button.
    await tester.tap(find.widgetWithText(TextButton, 'Terima').first);
    await tester.pump();

    // You can add further assertions or functionality based on your app's logic.
  });
}
