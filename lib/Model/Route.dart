import 'package:flutter/material.dart';
import 'package:student_mobile/Login.dart';

import '../Dashboard.dart';


toDashboard(BuildContext context,bool instant){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard();
          }
      )
  );
}
toLogin(BuildContext context,bool instant){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Login();
          }
      )
  );
}