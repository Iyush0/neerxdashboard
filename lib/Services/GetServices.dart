import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Models/AdminModel.dart';
class GetServices
{
 // Admin admin = Admin();
    getUnapprovedFarms()async
    {
      String url = "http://13.232.234.174:8888/admin-service/approval/unapprovedlist";
      String accessToken = await readData('token');
      print("Call time Token: ${accessToken}");
      Map<String,dynamic>header={
        "Authorization":accessToken,
      //  "Content-Type": 'application/json'
      };
      var response = await Dio().get(url,options: Options(
        headers: header
      ));
      print(response.statusCode);
    }
    getApprovedFarms()async
    {
      String url = "http://13.232.234.174:8888/admin-service/approval/approvedlist";
      String accessToken = await readData('token');
      print("Call time Token: $accessToken");
      Map<String,String>header={
       "Content-Type": 'application/json',
        "Authorization":accessToken,
      };
      var response = await http.get(Uri.parse(url),
          headers: header
      );
      print(response.statusCode);
    }
    getActiveUsers()async
    {
      String url = "http://13.232.234.174:8888/admin-service/activeusers";
      String accessToken = await readData('token');
      print("Call time Token: ${accessToken}");
      Map<String,dynamic>header={
        "Content-Type": 'application/json',
        "Authorization":accessToken,
      };
      var response = await Dio().get(url,options: Options(
          headers: header
      ));
      print(response.statusCode);
    }
}