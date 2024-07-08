import 'package:flutter/material.dart';
import 'package:student_mobile/Constant/Colors.dart';
import 'package:student_mobile/Constant/Size.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.maxFinite,
          color: Colors.blue,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hi, Kristin",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: FontSizeMedium(),
                              fontWeight: FontWeight.bold
                            )
                        ),
                        Text("Let's start Learning",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: FontSizeMedium()
                            )
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/Chat.png",
                        height: 50,
                        width: 50,
                      ),
                      Image.asset(
                        "assets/img/Avatar.png",
                        height: 50,
                        width: 50,
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 150),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
              ),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/img/Scan.png",
                            width: 50,
                            height: 50,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex : 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Point"),
                                      Row(
                                        crossAxisAlignment:CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/img/Coin.png",
                                            width: 10,
                                            height: 10,
                                          ),
                                          Text("750"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex : 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Semester"),
                                      Text("6")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex : 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("GPA"),
                                      Text("3.75")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex : 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Credits"),
                                      Text("132/144")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.only(left: 5,right: 10,top: 10,bottom: 10),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N1(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Academic.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: FontSizeExtraSmall(),
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N2(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Semester.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N3(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Point.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Poin",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N1()
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Study.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Study Plan",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N4(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Task.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Task",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N5(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Achievment.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Achievement",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N6(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Quiz.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Quiz",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N7(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Payment.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Payment",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N4(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Liblary.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Liblary Area",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N8(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Report.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Report Service",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N3(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Project.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Final Project",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N6(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Leave.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic Leave",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N1(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Glossary.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Glossary",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N9(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Blog.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Blog Admin",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: N10(),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/img/Activity.png",width: 50,height: 50,
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("My Activity",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: FontSizeExtraSmall(),
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Isi Disini
                    ],
                  ),


                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
