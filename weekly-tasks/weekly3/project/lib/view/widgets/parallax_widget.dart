import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key? key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double? top;
  final String? asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // left: -45,
      left: -20,
      top: top,
      child: SizedBox(
        height: 500,
        width: 580,
        child: Image.asset(
          "assets/$asset.png", 
          fit: BoxFit.cover,
        ),
      )
    );
  }
}