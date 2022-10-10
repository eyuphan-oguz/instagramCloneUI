import 'package:flutter/material.dart';
import 'package:ins/constants/colors.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          border: Border.all(color: ProjectColor.networkImageBackgroundColor, width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imagePath), fit: BoxFit.cover)),
    );


  }
}
