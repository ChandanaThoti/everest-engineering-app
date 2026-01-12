import 'package:flutter_test/flutter_test.dart';

import 'package:everest_engineering/main.dart';

void main() {
  testWidgets('display welcome text on home', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Welcome to Everest Engineering'), findsOneWidget);
  });
}
