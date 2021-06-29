import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class Admin {
  String accessToken;

  Admin({this.accessToken});

  Admin.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    acToken= accessToken;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    return data;
  }

}
