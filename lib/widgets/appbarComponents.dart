import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ins/constants/colors.dart';
import 'package:ins/constants/icons.dart';
import 'package:ins/constants/svgImageItems.dart';

class CustomAppbarWidget extends StatefulWidget {
  const CustomAppbarWidget({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<CustomAppbarWidget> createState() => _CustomAppbarWidgetState();
}

class _CustomAppbarWidgetState extends State<CustomAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ProjectColor.appbarBackground,
      elevation: 0.0,

      title: Transform(
        transform:  Matrix4.translationValues(-20.0, 0.0, 0.0),

        child: SvgPicture.asset('assets/images/svg/${SvgImageItems.instagramLogo}.svg',width: widget.size.width*0.40),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: ProjectIcon.addIcon,style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
    ProjectColor.iconColorBlack),),),
        IconButton(onPressed: (){}, icon: ProjectIcon.notificationIcon,style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              ProjectColor.iconColorBlack),),),
        IconButton(onPressed: (){}, icon: ProjectIcon.messageIcon,style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              ProjectColor.iconColorBlack),),),
      ],
    );
  }
}
