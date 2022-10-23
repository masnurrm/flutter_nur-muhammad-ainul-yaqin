import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:open_file/open_file.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_create_preview_task1/PreviewPost.dart';
// import 'package:intl/intl.dart';


class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  
  final List<Map<String, dynamic>> listColor = [
    {
      "colorName": "Red",
      "colorHexa": 0xffD2001A,
    },
    {
      "colorName": "Blue",
      "colorHexa": 0xff1A1AD2,
    },
    {
      "colorName": "Green",
      "colorHexa": 0xff1AD200,
    },
    {
      "colorName": "Yellow",
      "colorHexa": 0xffD2D21A,
    },
    {
      "colorName": "Orange",
      "colorHexa": 0xffD27A1A,
    },
    {
      "colorName": "Purple",
      "colorHexa": 0xff7A1AD2,
    },
    {
      "colorName": "Pink",
      "colorHexa": 0xffD21A7A,
    },
    {
      "colorName": "Black",
      "colorHexa": 0xff000000,
    },
    {
      "colorName": "White",
      "colorHexa": 0xffffffff,
    },
    {
      "colorName": "Green",
      "colorHexa": 0xff367E18,
    },
  ];

  late TextEditingController dateController;
  late TextEditingController textController;
  late Map<String, dynamic> colorData;
  late Color colorCurrent;
  File? fileController;

  @override
  void initState() {
    super.initState();
    dateController = TextEditingController();
    textController = TextEditingController();
    colorData = {
      'color': Colors.white,
      'colorName': 'White',
    };
    colorCurrent = colorData['color'];
  }

  @override
  void dispose() {
    dateController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Post'),
          centerTitle: true,
        ),
        body: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const Text('Cover Thumbnail', style: TextStyle(fontSize: 18, color: Colors.black),),
                const SizedBox(height: 10,),

                GestureDetector(
                  onTap: () async {
                    final FilePickerResult? result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg', 'png', 'jpeg'],
                    );

                    if(result != null) {
                      setState(() {
                        fileController = File(result.files.single.path!);
                      });
                    }
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: fileController != null ? Image.file(fileController!) : const Center(child: Text('Select Image'),),
                  ),
                ),
                const SizedBox(height: 10,),

                const Text("Published On", style: TextStyle(fontSize: 18, color: Colors.black),),
                const SizedBox(height: 10,),

                TextField(
                  controller: dateController,
                  onChanged: (value) => dateController.text = value,
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2023),
                    );

                    if(picked != null) {
                      // String getDate = DateFormat().format(picked);
                      // dateController.text = getDate;
                      print(dateController.text);
                    } else {
                      print('Date is not selected');
                    }
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Select Date',
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),

                const Text("Color Theme", style: TextStyle(fontSize: 18, color: Colors.black),),
                const SizedBox(height: 10,),

                TextField(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a Color'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: colorCurrent,
                              onColorChanged: (Color color) {
                                setState(() {
                                  colorCurrent = color;
                                  colorData['color'] = color;
                                  colorData['colorName'] = 'Custom';
                                });
                              },
                              showLabel: true,
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  decoration: InputDecoration(
                    hintText: 'Pick a Color',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: colorCurrent,
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 10,),

                const Text("Caption", style: TextStyle(fontSize: 18, color: Colors.black),),
                const SizedBox(height: 10,),

                TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Enter Caption',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 5,
                ),
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                print(textController.text);
                print(dateController.text);
                print(colorData);
                print(fileController);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                      context,
                    ) =>
                        PreviewPost(
                            imageFile: fileController!,
                            date: dateController.text,
                            selectedColor: colorCurrent,
                            caption: textController.text),
                  ),
                );
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
            ),
          ),
        ),
      );
  }
}