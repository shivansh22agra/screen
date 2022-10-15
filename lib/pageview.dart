import 'package:flutter/material.dart';
import 'package:project/DashBoard.dart';
import 'package:project/HomePage.dart';
import 'package:project/Screen.dart';

class PageViews extends StatefulWidget {
  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  int? currentIndex;
  //const PageView({super.key, required List<Widget> children});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[HomePage(), SecondPage(), Screen()],
        onPageChanged: (index) {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex ?? 0,
        onTap: (currentIndex) {},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "DashBoard"),
          BottomNavigationBarItem(icon: Icon(Icons.grading_sharp), label: "Taskspace"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
