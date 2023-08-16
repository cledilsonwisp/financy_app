import 'package:financy_app/src/core/widgets/primary_button.dart';
import 'package:financy_app/src/features/onboarding/ui/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Deve encontrar o Button na onboarding',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: OnboardingPage(),
    ));
    // await tester.pumpAndSettle();

    final button = find.byType(PrimaryButton);
    // expect(find.text('financy'), findsOneWidget);
    expect(button, findsOneWidget);
    // expect(find.text('Financy'), findsNothing);
  });
}
