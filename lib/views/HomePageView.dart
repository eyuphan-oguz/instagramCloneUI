import 'package:flutter/material.dart';
import 'package:ins/widgets/appbarComponents.dart';
import 'package:ins/widgets/customBottomNavigationBar.dart';
import 'package:ins/widgets/postComponents.dart';
import 'package:ins/widgets/storyComponents.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {


  @override
  Widget build(BuildContext context) {

    Size deviceSize=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: PreferredSize(preferredSize: deviceSize*0.07,
          child: CustomAppbarWidget(size: deviceSize,)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  StoryComponents(size: deviceSize),
                ],
              ),
            ),
            PostWidgetView(size: deviceSize,)

          ],
        ),
      ),
    ));
  }
}
