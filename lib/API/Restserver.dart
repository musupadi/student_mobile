var headers = {
  'Content-type': 'application/json',
  "Accept": "application/json",
  "Access-Control-Allow-Origin": getServerName(),
  "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
  "Access-Control-Allow-Headers": " Origin, Content-Type, Accept, Authorization, X-Request-With",
};
Map<String,String> headerBuilder(String token) {
  return headers = {
    'Content-type': 'application/json',
    "Accept": "application/json",
    "Access-Control-Allow-Origin": getServerName(),
    "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    "Access-Control-Allow-Headers": " Origin, Content-Type, Accept, Authorization, X-Request-With",
    "X-API-KEY": "$token"
  };
}

String getServerName(){
  return 'http://10.0.15.9/restserver2/';
}
String stringLogin(){
  return 'authentication/login';
}
String stringLogout(){
  return 'authentication/login';
}
