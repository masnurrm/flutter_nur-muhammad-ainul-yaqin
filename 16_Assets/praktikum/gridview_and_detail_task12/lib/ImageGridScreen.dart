// ignore: file_names
import 'package:flutter/material.dart';
import 'ImageDetailScreen.dart';

// ignore: camel_case_types
class _imageItem {
  final String image;
  final String name;

  _imageItem(this.image, this.name);
}

// ignore: must_be_immutable
class ImageGridScreen extends StatelessWidget {
  List imageList = [
    _imageItem("./assets/jkt1.jpg", "Album 1"),
    _imageItem("./assets/jkt2.jpg", "Album 2"),
    _imageItem("./assets/jkt3.jpg", "Album 3"),
    _imageItem("./assets/jkt4.jpg", "Album 4"),
    _imageItem("./assets/jkt5.jpg", "Album 5"),
    _imageItem("./assets/jkt6.jpg", "Album 6"),
    // _imageItem("./assets/jkt7.jpg", "Album 7"),
    // _imageItem("./assets/jkt8.jpg", "Album 8"),
    // _imageItem("./assets/jkt9.jpg", "Album 9"),
    // _imageItem("./assets/jkt10.jpg", "Album 10"),
    // _imageItem("./assets/jkt11.jpg", "Album 11"),
    // _imageItem("./assets/jkt12.jpg", "Album 12"),
  ];

  ImageGridScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('JKT48 Album'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            crossAxisCount: 3,
          ),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageDetailScreen(
                        image: imageList[index].image, name: imageList[index].name),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageList[index].image),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}