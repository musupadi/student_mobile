import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_mobile/API/Session.dart';
import 'package:student_mobile/Model/Ascendant.dart';
import 'package:student_mobile/Model/Route.dart';

import 'Restserver.dart';
Future<void> Logout(BuildContext context) async{
  try{
    final url = Uri.parse(getServerName()+stringLogout());
    final request = http.MultipartRequest('DELETE', url);
    request.headers.addAll(headerBuilder(await SharedToken()));
    // request.headers.addAll(headerBuilder(Token));
    final response = await request.send();
    final respStr = await response.stream.bytesToString();
    if(jsonDecode(respStr)['success'] == true){
      return jsonDecode(respStr)['data'];
    }else{

    }
    SharedPreferences pref = await SharedPreferences.getInstance();
    // FailedMessage("Contoh ", name.toString(), context);

    await pref.clear();
    toLogin(context,false);
  }on TimeoutException catch (e){
    toLogin(context,false);
  } on Error catch (e){
    Message("Test", e.toString(), context);
    // toLogin(context,false);
  }
}