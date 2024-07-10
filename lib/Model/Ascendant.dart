import "package:flutter/material.dart";
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