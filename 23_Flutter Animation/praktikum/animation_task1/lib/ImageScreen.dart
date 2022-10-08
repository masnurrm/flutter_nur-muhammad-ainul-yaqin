import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Image Animation'),
          centerTitle: true,
        ),
        body: Center(
          // resize image when tapped
          child: GestureDetector(
            onTap: () {
            setState(() {
              selected = !selected;
              });
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    width: selected ? 600.0 : 130.0,
                    height: selected ? 300.0 : 130.0,
                    alignment: selected ? Alignment.center : AlignmentDirectional.center,
                    duration: const Duration(seconds: 2),
                    curve: Curves.elasticInOut,
                    decoration: BoxDecoration(
                      color: selected ? Colors.red : Colors.blue,
                      borderRadius: BorderRadius.circular(selected ? 16 : 100),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("./assets/mina.png"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    curve: Curves.linear,
                    child: selected ? 
                      null : 
                      const Text("annyeong!", 
                                style: TextStyle(color: Colors.blueAccent, fontSize: 16, fontFamily: "Montserrat", fontWeight: FontWeight.normal),
                              ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}