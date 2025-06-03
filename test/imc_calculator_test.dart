import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora_imc/main.dart';

void main() {
  testWidgets('IMC result category', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Home()));

    await tester.enterText(
        find.widgetWithText(TextFormField, 'Peso (kg)'), '70');
    await tester.enterText(
        find.widgetWithText(TextFormField, 'Altura (cm)'), '170');

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.textContaining('Peso ideal'), findsOneWidget);
  });
}
