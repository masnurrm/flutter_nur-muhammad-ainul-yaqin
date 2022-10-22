import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery_dialog_task/GalleryScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gallery_dialog_task/ShowPhotosModal.dart';

void main() {
  testWidgets('Judul halaman harus Ryujin Album', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(
      home: GalleryScreen(),
      )
    );

    expect(find.text('Ryujin Album'), findsOneWidget);

  });

  testWidgets('appBar berwarna Cyan', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(
      home: GalleryScreen(),
      )
    );
    final appBarHome = tester.widget<AppBar>(find.byType(AppBar));

    expect(appBarHome.backgroundColor, Colors.cyan);

  });
}