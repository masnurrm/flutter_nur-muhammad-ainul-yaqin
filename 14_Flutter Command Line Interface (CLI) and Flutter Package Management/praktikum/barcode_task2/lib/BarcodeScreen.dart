// ignore: file_names
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeScreen extends StatelessWidget {
  const BarcodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Barcode Task 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Alterra Academy',
                width: 300,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Flutter Asik',
                width: 300,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Nur Muhammad',
                width: 300,
              ),
            ),
          ],
        )
      ),
    );
  }
}