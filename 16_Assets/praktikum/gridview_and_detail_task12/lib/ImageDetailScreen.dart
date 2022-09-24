import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  final String image;
  final String name;

  const ImageDetailScreen({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Image'),
        ),
        body: Column(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(image),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}