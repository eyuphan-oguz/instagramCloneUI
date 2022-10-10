import 'package:flutter/material.dart';
import 'package:ins/constants/icons.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: ProjectIcon.homeIcon,label: '',backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: ProjectIcon.searchIcon,label: '',backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: ProjectIcon.addBoxIcon,label: '',backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: ProjectIcon.profileIcon,label: '',backgroundColor: Colors.black),

      ],
    );
  }
}
