import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ins/widgets/PostWidgets/commentAndTimeWidget.dart';
import 'package:ins/widgets/PostWidgets/photoWidget.dart';
import 'package:ins/widgets/PostWidgets/underPhotoIconWidget.dart';
import 'package:ins/widgets/ImageWidget/networkImageWidget.dart';
import 'package:ins/widgets/PostWidgets/topWidget.dart';

class PostWidgetView extends StatefulWidget {
  const PostWidgetView({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<PostWidgetView> createState() => _PostWidgetViewState();
}

class _PostWidgetViewState extends State<PostWidgetView> {

  List _items = [];

  Future<void> getPostData() async {
    final String response = await rootBundle.loadString('assets/jsons/postData.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }
  @override
  void initState() {
    getPostData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: List.generate(_items.length, (index){
            return Column(
              children: [
                TopWidget(items: _items,size: widget.size,index: index),
                PhotoWidget( size: widget.size, items: _items, index: index,),
                SizedBox(height: 10,),
                UnderPhotoWidget(item: _items, size: widget.size, index: index,),
                SizedBox(height: 10,),
                CommentAndTimeWidget(item: _items, index: index,),
                SizedBox(height: 10,),

              ],
            );
          }),
    ),
      );



  }
}
