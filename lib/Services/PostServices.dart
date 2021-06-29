import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Models/AdminModel.dart';
class PostServices
{
  Future<Admin>adminLogIn(String username,String password)async
  {
 //   String uri = baseUrl+"/api/signin";
    Map<String,dynamic> body = {
      "username":username,
      "password":password
    };
    Map<String, dynamic> head = {
      "Content-Type": "application/json",
    };
    var response = await Dio().post(
      "http://13.232.234.174:8888/api/signin",
      data: body,
      options: Options(
        headers: head,
      ),
    );
    if(response.statusCode==201)
      {
        print(response.data);
        bool tokenSaved = await saveData(
            saveKey: 'token',
            saveValue: '${response.data["accessToken"]}');
        return Admin.fromJson(response.data);
     //   return Admin.fromJson(jsonData);
      }
    else
      {
      //  var jsonData = response.statusCode.toString();
        print(response.data);
        Fluttertoast.showToast(msg: response.data.toString());
      }
  }
  Future<int> adminSignUp(String username,String password,String emailId, String phoneNumber)async
  {
    print("$username, $emailId, $phoneNumber, $password");
    String uri = "http://13.232.234.174:8888/api/register";
    Uri url = Uri.parse(uri);
    var body = {
      "email":emailId,
      "mobileNumber":phoneNumber,
      "password":password,
      "name":username,
      "lastName":"hell",
      "lag":"ENG",
      "role": [{"role": "ADMIN"}]
    };
    Map<String, dynamic> head = {
      "Content-Type": "application/json",
    };
    var response = await Dio().post(
      uri,
      data: body,
      options: Options(
        headers: head,
      ),
    );
    if(response.statusCode==200)
    {
      print(response.data.toString());
      Fluttertoast.showToast(msg: "Success, please Log in from new account");
      return response.statusCode;
    }
    else
    {
      var jsonData = response.data.toString();
      print(jsonData.toString());
      Fluttertoast.showToast(msg: jsonData.toString());
      return response.statusCode;
    }
  }
}