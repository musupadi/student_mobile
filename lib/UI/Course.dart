import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  TextEditingController searchController = TextEditingController();
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Photo'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.videocam),
                title: Text('Video'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 350,
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            leading: null, // Remove the back button
            collapsedHeight: 100,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(
                  centerTitle: true,
                  titlePadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  title: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose your course",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 30,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: Text(
                                    "All",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 15.0),
                                  child: Text(
                                    "Recommend",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 15.0),
                                  child: Text(
                                    "Additional",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  background: Column(
                    children: [
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Study Plan",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: FractionalOffset.centerRight,
                                child: Icon(
                                  Icons.abc,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            labelText: 'Search',
                            suffixIcon: InkWell(
                                onTap: () {
                                  _showModalBottomSheet();
                                },
                                child: Icon(Icons.abc)),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/img/language.png",
                                height: 100,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/img/painting.png",
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                  tileColor: Colors.orange[(index % 9 + 1) * 100],
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
