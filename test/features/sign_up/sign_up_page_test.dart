import 'package:financy_app/src/features/auth/ui/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Deve encontrar o title da page', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SignUpPage(),
    ));
    await tester.pumpAndSettle();

    final button = find.text("Start Saving\nyour money!");
    // expect(find.text('financy'), findsOneWidget);
    expect(button, findsOneWidget);
    // expect(find.text('Financy'), findsNothing);
  });
}
