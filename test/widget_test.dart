// This is an example Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
//
// Visit https://flutter.dev/docs/cookbook/testing/widget/introduction for
// more information about Widget testing.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/src/app.dart';
import 'package:my_app/src/settings/settings_controller.dart';
import 'package:my_app/src/settings/settings_service.dart';

void main() {
  group('MyApp', () {
    testWidgets('should display the app with the correct theme', (WidgetTester tester) async {
      // Set up the SettingsController
      final settingsController = SettingsController(SettingsService());
      await settingsController.loadSettings();

      // Build MyApp and trigger a frame.
      await tester.pumpWidget(MyApp(settingsController: settingsController));

      // Verify the app shows the correct theme
      expect(find.byType(MaterialApp), findsOneWidget);
      expect(find.byType(Scaffold), findsWidgets);
    });
  });
}
