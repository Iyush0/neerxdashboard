import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Dashboard/Components/DrawerTile.dart';

import '../../../Routes.dart';


class SideMenuPanel extends StatefulWidget {
  const SideMenuPanel({Key key}) : super(key: key);

  @override
  _SideMenuPanelState createState() => _SideMenuPanelState();
}

class _SideMenuPanelState extends State<SideMenuPanel> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        color: Color(0xff69bf87).withOpacity(1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.04 * height),
                child: Text(
                  "Neer X",
                  style: Theme.of(context).textTheme.headline4.merge(style1).copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 0.03 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      print(acToken);
                      toggleFunc(1);
                    });
                    Navigator.pushNamed(context, Routes.dashboard);
                  },
                  child: DrawerTile(
                    title: "Dashboard",
                    iconImg: "assets/images/i1.png",
                    colorTracker: isDashboard ? true : false,
                  )),
              SizedBox(
                height: 0.02 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(2);
                    });
                    Navigator.pushNamed(context, Routes.farmPage);
                  },
                  child: DrawerTile(
                    title: "Farm",
                    iconImg: "assets/images/home.png",
                    colorTracker: isFarm ? true : false,
                  )),
              SizedBox(
                height: 0.02 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(3);
                    });
                    Navigator.pushNamed(context, Routes.nowcastPage);
                  },
                  child: DrawerTile(
                      title: "Nowcast",
                      iconImg: "assets/images/i2.png",
                      colorTracker: isNowcast ? true : false)),
              SizedBox(
                height: 0.02 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(4);
                    });
                    Navigator.pushNamed(context, Routes.forecastPage);
                  },
                  child: DrawerTile(
                      title: "Forecast",
                      iconImg: "assets/images/i3.png",
                      colorTracker: isForecast ? true : false)),
              SizedBox(
                height: 0.02 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(5);
                    });
                    Navigator.pushNamed(context, Routes.userActivityPage);
                  },
                  child: DrawerTile(
                      title: "User Activity",
                      iconImg: "assets/images/i4.png",
                      colorTracker: isNotifications ? true : false)),
              SizedBox(
                height: 0.02 * height,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(6);
                    });
                    Navigator.pushNamed(context, Routes.helpPage);
                  },
                  child: DrawerTile(
                      title: "Help",
                      iconImg: "assets/images/help.png",
                      colorTracker: isHelp ? true : false)),
              InkWell(
                  onTap: () async {
                    setState(() {
                      toggleFunc(7);
                    });
                    Navigator.pushNamed(context, Routes.manageNotifsPage);
                  },
                  child: DrawerTile(
                      title: "Manage Notifications",
                      iconImg: "assets/images/help.png",
                      colorTracker: isManageNotif ? true : false)),
            ],
          ),
        ),
      ),
    );
  }
}
