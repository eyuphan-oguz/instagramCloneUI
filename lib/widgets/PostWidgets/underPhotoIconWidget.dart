import 'package:flutter/material.dart';
import 'package:ins/constants/pngImageItems.dart';
import 'package:ins/widgets/ImageWidget/pngImageWidget.dart';


class UnderPhotoWidget extends StatefulWidget {
  const UnderPhotoWidget({Key? key, required this.item, required this.size, required this.index}) : super(key: key);
  final List item;
  final Size size;
  final int index;


  @override
  State<UnderPhotoWidget> createState() => _UnderPhotoWidgetState();
}

class _UnderPhotoWidgetState extends State<UnderPhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: widget.size.width*0.28,
            height: widget.size.height*0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.item[widget.index]['isLoved']==true ?PngImageWidget(imagePath: PngImageItems.loved,):
                PngImageWidget(imagePath: PngImageItems.love,),
                PngImageWidget(imagePath: PngImageItems.comment,),
                PngImageWidget(imagePath: PngImageItems.share,),

              ],

            ),
          )  ,
          Container(
              height: widget.size.height*0.035,
              child: PngImageWidget(imagePath: PngImageItems.save,),),


        ],
      ),
    );
  }
}
