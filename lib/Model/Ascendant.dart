import "package:flutter/material.dart";
import "package:student_mobile/API/API.dart";
import "package:student_mobile/Constant/Colors.dart";
import "package:student_mobile/Model/Route.dart";
LogoutMessage(String title,String desc,BuildContext context){
  showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 200),
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Container();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.5,end: 1.0).animate(animation),
        child: AlertDialog(
          title: Center(
              child: Text(title)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(desc),
              const SizedBox(height: 10),
              Container(
                width: 300,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Logout(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text("Iya",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Text("Tidak",
                                style: TextStyle(
                                    color: Colors.white
                                ),),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none
          ),
        ),
      );
    },
  );
}
LoginSucces(BuildContext context,String name){
  showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 200),
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Container();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.5,end: 1.0).animate(animation),
        child: AlertDialog(
          title: Center(
              child: Text("Succesfully Login")
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text("Login Succesfully as $name")),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  toDashboard(context,false);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: PUcenter()
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
                  ),
                ),
              )
            ],
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none
          ),
        ),
      );
    },
  );
}
Message(String title,String desc,BuildContext context){
  showGeneralDialog(
    barrierLabel: '',
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 200),
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Container();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.5,end: 1.0).animate(animation),
        child: AlertDialog(
          title: Center(
              child: Text(title)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(desc),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(child: Text("Tutup",style: TextStyle(color: Colors.white),)),
                  ),
                ),
              )
            ],
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none
          ),
        ),
      );
    },
  );
}