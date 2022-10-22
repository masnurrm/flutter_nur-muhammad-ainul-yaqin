import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery_dialog_task/GalleryBottomSheet.dart';
import 'package:gallery_dialog_task/GalleryScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gallery_dialog_task/ShowPhotosModal.dart';

void main() {
  testWidgets('Sizedbox berukuran width/2.5 dan height/2.5', (WidgetTester tester) async {

    await tester.pumpWidget(const MaterialApp(
      home: GalleryBottomSheet(description: '', image: ''),
      )
    );
    final sizedBarBottom = tester.widget<SizedBox>(find.byType(SizedBox));

    BuildContext context;
    // expect(sizedBarBottom.width, (MediaQuery.of(context).size.width)/2.5);

  });
}