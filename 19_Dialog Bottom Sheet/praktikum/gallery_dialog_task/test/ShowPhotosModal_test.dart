import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery_dialog_task/GalleryScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gallery_dialog_task/ShowPhotosModal.dart';

void main() {
  testWidgets('terdapat icon close', (WidgetTester tester) async {

    await tester.pumpWidget(const MaterialApp(
      home: ShowPhotosModal(image: '',),
      )
    );

    final modalPopUp = tester.widget<Icon>(find.byType(Icon));

    // expect(find.byIcon(Icons.close), findsOneWidget);

  });

}