import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_kartu_nama/kartu_nama.dart';

void main() {
  testWidgets('KartuNama tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: KartuNama()));
    expect(find.byType(KartuNama), findsOneWidget);
  });
}