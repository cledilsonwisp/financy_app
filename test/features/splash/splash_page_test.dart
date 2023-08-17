import 'package:financy_app/src/features/splash/ui/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Deve encontrar o título da splash page',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SplashPage(),
    ));
    await tester.pumpAndSettle();

    final text = find.byType(Text);
    // expect(find.text('financy'), findsOneWidget);
    expect(text, findsOneWidget);
    // expect(find.text('Financy'), findsNothing);
  });
}
