import 'package:flutter/material.dart';
import 'package:ins/constants/colors.dart';

class CommentAndTimeWidget extends StatefulWidget {
  const CommentAndTimeWidget({Key? key, required this.item, required this.index}) : super(key: key);
  final List item;
  final int index;

  @override
  State<CommentAndTimeWidget> createState() => _CommentAndTimeWidgetState();
}

class _CommentAndTimeWidgetState extends State<CommentAndTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Liked By',style: TextStyle(color: ProjectColor.textColorWhite),),
                SizedBox(width: 5,),
                Text(widget.item[widget.index]['likedBy'],style: TextStyle(fontWeight: FontWeight.bold,color: ProjectColor.textColorWhite),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(widget.item[widget.index]['name'],style: TextStyle(color: ProjectColor.textColorWhite,fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Expanded(child: Text(widget.item[widget.index]['caption'],style: TextStyle(color: ProjectColor.textColorWhite),),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('View',style: TextStyle(color: ProjectColor.textColorLightGrey)),
                SizedBox(width: 3,),
                Text(widget.item[widget.index]['commentCount'],style: TextStyle(color: ProjectColor.textColorLightGrey,fontWeight: FontWeight.bold),),
                SizedBox(width: 3,),
                Text('comment',style: TextStyle(color: ProjectColor.textColorLightGrey)),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Text(widget.item[widget.index]['timeAgo'],style: TextStyle(color: ProjectColor.textColorDarkGrey,fontWeight: FontWeight.bold),),
              ],
            ),

          ],
        )
    );
  }
}
