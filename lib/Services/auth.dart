import 'dart:convert';

import 'package:aibert/Model/usermodel.dart';
import 'package:aibert/Services/endpoitns.dart';
import 'package:dio/dio.dart';

class AuthService{
  Future<dynamic?> signup()async{
    Future<UserModel?> registerUser(String email,String password,String name,String phone)async{
      try{
        var res=await Dio().post(EndPoints.reg,data: jsonEncode({
          'email' : email,
          'password' : password,
          'name' : name,
          'phone':phone
        }));
        print("Register res : ${res.data}");
        return res.data;
      }catch(e) {
        print("Error registerUser $e");
        return null;
      }
    }
  }
  void login(){}
}
