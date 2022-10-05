import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ins/widgets/accountHolderStoryShape.dart';
import 'package:ins/widgets/storyShapeImage.dart';

class StoryComponents extends StatefulWidget {
  const StoryComponents({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<StoryComponents> createState() => _StoryComponentsState();
}

class _StoryComponentsState extends State<StoryComponents> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/jsons/storyPhotoData.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }
  @override
  void initState() {
      readJson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height*0.15,
      width: widget.size.width*1,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (context,index){
            print(_items[index]["imageUrl"]);
            if(_items[index]['id']=='1'){
              return AccountHolderStoryShape();
            }
            else{
              return StoryShapeImage(imageUrl: _items[index]["imageUrl"], userName: _items[index]["userName"], size: widget.size,);

            }
      }),
    );
  }
}
