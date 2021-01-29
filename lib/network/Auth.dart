
import 'package:dio/dio.dart';

class Auth{
  String url="http://192.168.1.7:8000/api/";

  create_email(String name,String email,String pass)async {
    Map<String,String> map=Map();
    map['name']=name;
    map['email']=email;
    map['password']=pass;
    // print(map);

    var response = await Dio().post(url+"create",data:map );

    print(response);
  }

  login(String email,String pass)async{
    Map<String,String> map=Map();
    map['email']=email;
    map['password']=pass;
    var response = await Dio().post(url+"login",data:map );


    print(response.data["token"]);


  }

}