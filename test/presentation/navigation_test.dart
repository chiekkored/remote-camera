import 'package:flutter_test/flutter_test.dart';
import 'package:sideeye/main.dart';

void main() {
  testWidgets('Camera and Remote open their routes', (tester) async {
    await tester.pumpWidget(const SideEyeApp());

    expect(find.text('Use this phone to shoot'), findsOneWidget);
    expect(find.text('Control another phone'), findsOneWidget);

    await tester.tap(find.text('Camera'));
    await tester.pumpAndSettle();
    expect(find.text('Camera setup is coming soon.'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Remote'));
    await tester.pumpAndSettle();
    expect(find.text('Remote setup is coming soon.'), findsOneWidget);
  });
}
