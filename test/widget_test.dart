import 'package:flutter_test/flutter_test.dart';
import 'package:valorant_chamber_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ValorantApp());
    expect(find.byType(ValorantApp), findsOneWidget);
  });
}