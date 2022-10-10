import 'package:flutter/material.dart';
import 'package:ins/constants/colors.dart';

class AccountHolderStoryShape extends StatefulWidget {
  const AccountHolderStoryShape({Key? key}) : super(key: key);

  @override
  State<AccountHolderStoryShape> createState() => _AccountHolderStoryShapeState();
}

class _AccountHolderStoryShapeState extends State<AccountHolderStoryShape> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/jpg/humans/human3.jpg'),fit: BoxFit.cover)
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 19,
                    height: 19,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add_circle,color: ProjectColor.addStoryButtonColor,size: 19,),
                  ))
            ],
          ),
        ),
        SizedBox(height: 8,),
        SizedBox(width: 70,
          child: Center(
            child: Text('Story',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: ProjectColor.textColorWhite
              ),),
          )
          ,)
      ],
    );
  }
}
