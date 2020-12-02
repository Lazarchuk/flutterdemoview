import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdemoview/main.dart';

void main() {
  testWidgets('Demoview greeting test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());
    var text = find.byType(Text);
    expect(text, findsOneWidget);
    expect(find.text('Hey there'), findsWidgets);

  });
}