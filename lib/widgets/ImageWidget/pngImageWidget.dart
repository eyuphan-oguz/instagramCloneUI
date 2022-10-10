import 'package:flutter/material.dart';


class PngImageWidget extends StatelessWidget {
  const PngImageWidget({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/png/${imagePath}.png');
  }
}
