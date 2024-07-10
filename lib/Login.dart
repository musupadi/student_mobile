import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_mobile/Constant/Colors.dart';
import 'package:student_mobile/Dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:student_mobile/Model/Ascendant.dart';
import 'API/Restserver.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passenable = true; //boolean value to track password view enable disable.
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  bool isLoading = false;
  LoginSuccess (String name){
    AwesomeDialog(
        context: context,
        dismissOnTouchOutside: true,
        dismissOnBackKeyPress: false,
        dialogType: DialogType.success,
        animType: AnimType.scale,
        title: "Login Succes",
        desc: "Selamat Datang "+name,
        btnOkOnPress: () {

        },
        headerAnimationLoop: false
    )..show();
  }
  Logins() async{
    int timeout = 5;

    setState(() => isLoading=true);
    try{
      final response = await http.post(
          Uri.parse(getServerName()+stringLogin()),
          body: {
            "Username": controllerUsername.text,
            "Password": controllerPassword.text
          }).timeout(Duration(seconds: timeout));

      print(response.body.toString());
      String data= jsonDecode(response.body)['data'].toString();
      if(data == "Data Tidak Ditemukan"){
        Message("Failed to Login", jsonDecode(response.body)['data'].toString(), context);
      }else{
        var sessionManager = SessionManager();
        await sessionManager.set("apikey", jsonDecode(response.body)['data'][0]['APIKey'].toString());
        await sessionManager.set("photo", jsonDecode(response.body)['data'][0]['Photo'].toString());
        await sessionManager.set("nip", jsonDecode(response.body)['data'][0]['NIP'].toString());
        await sessionManager.set("name", jsonDecode(response.body)['data'][0]['Name'].toString());

        String name = await SessionManager().get("name").toString();
        LoginSuccess(name.toString());
        // FailedMessage("Success", jsonDecode(response.body)['data'][0]['Name'].toString(), context);
      }
      // Obtain shared preferences.
      ;
      // //
      // //
      // String? name = prefs.getString('name');
      // String? id = prefs.getString("id");
      // String? username = prefs.getString("username");

      // var sessionManager = SessionManager();
      // await sessionManager.set("id", jsonDecode(response.body)['data'][0]['id'].toString());
      // await sessionManager.set("username", jsonDecode(response.body)['data'][0]['username'].toString());
      // await sessionManager.set("name", jsonDecode(response.body)['data'][0]['nama'].toString());

      // String name = await SessionManager().get("name").toString();
      // LoginSuccess(name.toString());

    }on Error catch(e){

    }

  }
  @override
  void initState() {
    // Get.to(logins);
    super.initState();
    controllerUsername.addListener(() => setState((){}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              // Logo
              Image.network(
                'https://portal.podomorouniversity.ac.id/assets/icon/logo_pu.png', // Ganti dengan URL logo Anda
                height: 100,
              ),
              SizedBox(height: 40),
              // Email TextField
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        controller: controllerUsername,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Password TextField
                      TextField(
                        controller: controllerPassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                            suffixIcon: IconButton(
                                icon: passenable
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () =>
                                    setState(() => passenable = !passenable)
                            )
                        ),
                        obscureText: passenable,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 10),
                      // Forget Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Forget password?'),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Log In Button
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                             Logins();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        ),
                        child: Text('Log In',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      SizedBox(height: 10),
                      // Contact Us
                      TextButton(
                        onPressed: () {},
                        child: Text('Need further assistance ? Contact Us'),
                      ),
                      SizedBox(height: 20),
                      // Or login with
                      Text('Or login with'),
                      SizedBox(height: 10),
                      // Google Login Button
                      IconButton(
                        icon: Image.network(
                          'https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA', // Ganti dengan URL ikon Google Anda
                          height: 40,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}