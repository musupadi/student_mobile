import 'package:flutter/material.dart';
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
                      Icon(Icons.add,size: 50,),
                      Icon(Icons.add,size: 50,)
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
                          Icon(
                            Icons.qr_code,
                            size: 50,
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
                                      Text("750")
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.book,color: Colors.white,size: 50)
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.track_changes,color: Colors.white,size: 50)
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Academic",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
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
                          color: Colors.blue,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Icon(Icons.abc,size: 50)
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("Semester\nAntara",textAlign: TextAlign.center,style: TextStyle(
                                  fontSize: FontSizeExtraSmall()
                              ),),
                            )
                          ],
                        ),
                      ),
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
