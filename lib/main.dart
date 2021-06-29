import 'package:flutter/material.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Dashboard/DashboardScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/FarmPage.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/SingleFarmScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Forecast/ForecastScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/HelpSection/HelpScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/HelpSection/SingleChatMobileScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/ManageNotifications/ManageNotificationsScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Nowcast/NowcastScreen.dart';
import 'package:neerxdashboard/Screens/HomeScreens/UserActivity/UserActivityScreen.dart';
import 'Screens/AuthScreens/ForgotPassword.dart';
import 'Screens/AuthScreens/LogIn.dart';
import 'Screens/AuthScreens/ConfirmPassword.dart';
import 'package:neerxdashboard/Routes.dart';

import 'Screens/AuthScreens/SignUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

var routes = <String, WidgetBuilder>{
  Routes.SignIn: (BuildContext context) => LogIn(),
  Routes.forgotPassword: (BuildContext context) => ForgotPassword(),
  Routes.confirmPassword: (BuildContext context) => ConfirmPassword(),
  Routes.dashboard: (BuildContext context) => Dashboard(),
  Routes.SignUp: (BuildContext context) => SignUp(),
  Routes.farmPage: (BuildContext context) => FarmPage(),
  Routes.singleFarmPage: (BuildContext context) => SingleFarmScreen(),
  Routes.nowcastPage: (BuildContext context)=>NowcastScreen(),
  Routes.forecastPage: (BuildContext context)=>ForecastScreen(),
  Routes.helpPage: (BuildContext context)=>HelpScreen(),
  Routes.userActivityPage:(BuildContext context)=>UserActivityScreen(),
  Routes.manageNotifsPage: (BuildContext context)=>ManageNotificationsScreen(),
  Routes.singleChatScreen: (BuildContext context)=>SingleChatMobileScreen(),
};
