import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ins/widgets/pngImageWidget.dart';

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
                Row(
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
                              child: CustomNetworkImage(imagePath: _items[index]['profileImg'],)
                          ),
                        ),
                        Text(_items[index]['name'],style: TextStyle(color: Colors.white),)
                      ],
                    ),
            Icon(Icons.more_horiz,color: Colors.white,)

            ],
                ),
                Container(
                  height: widget.size.height*0.55,
                  width: widget.size.width*1,
                  child: Image.network(_items[index]['postImg'],fit: BoxFit.fill),
                ),
                SizedBox(height: 10,),
                Padding(
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
                            _items[index]['isLoved']==true ?Image.asset('assets/images/png/loved.png'):
                                Image.asset('assets/images/png/love.png'),

                            Image.asset('assets/images/png/comment.png'),
                            Image.asset('assets/images/png/share.png'),

                          ],

                        ),
                      )  ,
                      Container(
                          height: widget.size.height*0.035,
                          child: Image.asset('assets/images/png/save.png')),


                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Liked By',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 5,),
                          Text(_items[index]['likedBy'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(_items[index]['name'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Expanded(child: Text(_items[index]['caption'],style: TextStyle(color: Colors.white),),)
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Text('View',style: TextStyle(color: Colors.grey.shade400)),
                          SizedBox(width: 3,),
                          Text(_items[index]['commentCount'],style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold),),
                          SizedBox(width: 3,),
                          Text('comment',style: TextStyle(color: Colors.grey.shade400)),

                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Text(_items[index]['timeAgo'],style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    ],
                  )
                ),
                SizedBox(height: 10,),

              ],
            );
          }),
    ),
      );



  }
}
