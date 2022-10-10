import 'package:flutter/material.dart';


class PhotoWidget extends StatefulWidget {
  const PhotoWidget({Key? key, required this.size, required this.items, required this.index}) : super(key: key);
  final List items;
  final Size size;
  final int index;

  @override
  State<PhotoWidget> createState() => _PhotoWidgetState();
}

class _PhotoWidgetState extends State<PhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height*0.55,
      width: widget.size.width*1,
      child: Image.network(widget.items[widget.index]['postImg'],fit: BoxFit.fill),
    );
  }
}
