import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce_app/main.dart';

void main() {
  testWidgets('StyleCart app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StyleCartApp());

    // Verify the app title is displayed.
    expect(find.text('StyleCart'), findsOneWidget);

    // Verify the tagline is displayed.
    expect(find.textContaining('Fresh groceries'), findsOneWidget);

    // Verify the Popular Products header is present.
    expect(find.text('Popular Products'), findsOneWidget);
  });
}
