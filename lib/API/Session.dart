import 'package:shared_preferences/shared_preferences.dart';

Future<String> SharedToken() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("apikey")!;
}
Future<String> SharedName() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("name")!;
}
Future<String> SharedPhoto() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("photo")!;
}
Future<String> SharedNIP() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("nip")!;
}