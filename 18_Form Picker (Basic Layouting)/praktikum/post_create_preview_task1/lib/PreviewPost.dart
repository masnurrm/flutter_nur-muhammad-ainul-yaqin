import 'dart:io';

import 'package:flutter/material.dart';

import 'CreatePostScreen.dart';

class PreviewPost extends StatelessWidget {
  const PreviewPost({
    super.key,
    required this.imageFile,
    required this.date,
    required this.selectedColor,
    required this.caption,
  });

  final File imageFile;
  final String date;
  final Color selectedColor;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Preview Post'),
          centerTitle: true,
        ),
       body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.file(
              imageFile,
              height: 300,
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Published : $date",
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                Row(
                  children: [
                    const Text(
                      "Color",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: selectedColor),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Center(
                child: Text(
                  caption,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}