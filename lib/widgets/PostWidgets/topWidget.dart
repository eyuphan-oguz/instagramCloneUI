import 'package:flutter/material.dart';
import 'package:ins/constants/colors.dart';
import 'package:ins/constants/icons.dart';

import 'package:ins/widgets/ImageWidget/networkImageWidget.dart';


class TopWidget extends StatefulWidget {
  const TopWidget({Key? key, required this.items, required this.size, required this.index}) : super(key: key);
  final List items;
  final Size size;
  final int index;

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: widget.size.width*0.11,
              height: widget.size.width*0.11,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CustomNetworkImage(imagePath: widget.items[widget.index]['profileImg'],)
              ),
            ),
            Text(widget.items[widget.index]['name'],style: TextStyle(color: ProjectColor.textColorWhite),)
          ],
        ),
        IconButton(onPressed: (){}, icon: ProjectIcon.threeDotIcon,color:ProjectColor.iconColorWhite ,)


      ],
    );
  }
}
