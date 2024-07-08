import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:student_mobile/UI/Course.dart';
import 'package:student_mobile/UI/Home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  String id="0";
  String name="";
  String username="";
  void _navigationBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget>tabs = [
    Home(),
    Course(),
    Text("data3"),
    Text("data3"),
    Text("data3"),
    Text("data3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: ConvexAppBar.badge(
          const <int,dynamic>{6:'99+'},
          style: TabStyle.fixedCircle,
          backgroundColor: Colors.blue,
          activeColor: Colors.white,
          items: <TabItem>[
            TabItem(icon: Icons.home,title: "Home"),
            TabItem(icon: Icons.book,title: "Course"),
            TabItem(icon: Icons.search,title: "Search"),
            TabItem(icon: Icons.chat,title: "Message"),
            TabItem(icon: Icons.person,title: "Account")
          ],
          onTap: (int i) => _navigationBottomBar(i),
        )
    );
  }
}