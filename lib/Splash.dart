import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_mobile/Login.dart';
import 'package:student_mobile/Model/Route.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Checker();
  }
  Checker() async{
    final prefs = await SharedPreferences.getInstance();

    String? name = prefs.getString('name');
    if(name !=null){
      toDashboard(context,true);
    }else{
      toLogin(context,false);
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
