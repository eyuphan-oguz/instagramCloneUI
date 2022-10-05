import 'package:flutter/material.dart';
import 'package:ins/constant/colors.dart';
import 'package:ins/view/HomePageView.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ProjectColor.mainBackgroundColor),
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}
