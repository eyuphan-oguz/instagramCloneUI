import 'package:flutter/material.dart';
import 'package:ins/constants/colors.dart';

class StoryShapeImage extends StatefulWidget {
  const StoryShapeImage(
      {Key? key, required this.imageUrl, required this.userName, required this.size})
      : super(key: key);
  final String imageUrl;
  final String userName;
  final Size size;
  @override
  State<StoryShapeImage> createState() => _StoryShapeImageState();
}

class _StoryShapeImageState extends State<StoryShapeImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widget.size.width*0.2,
          height: widget.size.width*0.17,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: ProjectColor.storyBorderColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(widget.imageUrl), fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 70,
          child: Center(
            child: Text(
              widget.userName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: ProjectColor.textColorWhite),
            ),
          ),
        )
      ],
    );
  }
}
