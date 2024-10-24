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
import 'package:your_app/src/sample_feature/sample_item_list_view.dart';
import 'package:your_app/src/sample_feature/sample_item.dart';

void main() {
  group('Home Screen Tests', () {
    testWidgets('should display featured mangas section', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleItemListView()));

      expect(find.text('Featured Mangas'), findsOneWidget);
    });

    testWidgets('should display categories section', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleItemListView()));

      expect(find.text('Categories'), findsOneWidget);
    });

    testWidgets('should display list of mangas', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleItemListView()));

      expect(find.byType(MangaCard), findsNWidgets(3));
    });

    testWidgets('should navigate to details on manga tap', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: SampleItemListView(),
        routes: {
          '/details': (context) => Scaffold(body: Text('Details Page')),
        },
      ));

      await tester.tap(find.byType(MangaCard).first);
      await tester.pumpAndSettle();

      expect(find.text('Details Page'), findsOneWidget);
    });
  });
}
