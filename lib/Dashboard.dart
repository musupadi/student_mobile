import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:student_mobile/Constant/Colors.dart';
import 'package:student_mobile/Constant/Size.dart';
import 'package:student_mobile/Model/Ascendant.dart';
import 'package:student_mobile/UI/Course.dart';
import 'package:student_mobile/UI/Home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  bool isLoading = false;
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
  void state(){
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return LogoutMessage("Logout", "Are you Sure you want to Logout ?", context);
      },
      child: Stack(
        children: [
          Scaffold(
              body: tabs[_currentIndex],
              bottomNavigationBar: ConvexAppBar.badge(
                const <int,dynamic>{6:'99+'},
                style: TabStyle.fixedCircle,
                backgroundColor: PUleft(),
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
          ),
          Visibility(
            visible: isLoading,
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Visibility(
            visible: isLoading,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: SpinKitFoldingCube(
                      color: PUleft(),
                      size: 50,
                    )
                ),
                SizedBox(width: double.infinity, height: 20,),
                Text("Trying to Login",
                  style: TextStyle(
                      color: PUleft(),
                      fontSize: FontSizeLarge(),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}