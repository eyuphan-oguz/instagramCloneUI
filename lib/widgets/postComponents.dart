import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ins/constant/colors.dart';
import 'package:ins/constant/icons.dart';

class PostComponents extends StatefulWidget {
  const PostComponents({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  State<PostComponents> createState() => _PostComponentsState();
}


class _PostComponentsState extends State<PostComponents> {
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
      height: widget.size.height*1,
      width: widget.size.width*1,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: _items.length,
          itemBuilder: (context,index){
            return Container(

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: widget.size.width*0.1,
                            height: widget.size.width*0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: ProjectColor.storyBorderColor),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 2),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(_items[index]['imageUrl']), fit: BoxFit.cover)),
                            ),
                          ),Text(_items[index]['userName'],style: TextStyle(color: Colors.white),),

                        ],
                      ),

                      Icon(Icons.more_horiz,color: Colors.white,)

            ],
                  ),
                  Container(height: widget.size.height*0.67,child:
                    Column(
                      children: [
                        Expanded(
                          child: Container(height: widget.size.height*0.6,
                          child:Image.asset(_items[index]['imageUrl'],fit: BoxFit.fill,) ,),
                        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.favorite_border_outlined,color: Colors.white),
                      Icon(Icons.maps_ugc_rounded,color: Colors.white),
                      Icon(Icons.send,color: Colors.white)],
                  ),
                  Icon(Icons.turned_in_not_sharp,color: Colors.white)
                            ],
                          )

                      ],
                    ),)
                ],
              ),
            );


          }),
    );
  }
}
