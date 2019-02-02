import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/demo/test/test_demo.dart';

void main() {
  // unit test 单元测试
  test('should return hello + something.', () {
    var string = SamTestDemo.greet('sam');
    expect(string, 'hello sam ~');
  });

  // widget test 小部件测试
  testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TestDemo(),
      )
    );
    final labelText = find.text('hello sam');
    // expect(labelText, findsNothing);
    // expect(labelText, findsOneWidget);
    expect(labelText, findsNWidgets(1));

    final actionChipLabelText = find.text('0');
    // expect(actionChipLabelText, findsNothing);
    expect(actionChipLabelText, findsOneWidget);

    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();

    final actionChipLabelTextAfterTap = find.text('1');
    expect(actionChipLabelTextAfterTap, findsOneWidget);
    expect(actionChipLabelText, findsNothing);
  });
}