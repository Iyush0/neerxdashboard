import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Models/AdminModel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Services/GetServices.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import '../../../Routes.dart';
import 'Components/DrawerTile.dart';
import 'Components/Geopainter.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 Admin currAdmin = Admin();
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetServices().getActiveUsers();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
      builder: (context, sizing) {
        if(sizing.isDesktop)
          {
            return Scaffold(

              body: SafeArea(
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: SideMenuPanel()
                                ),            // SideMenu
                              Expanded(
                                  flex: 6,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        TopPanel(),
                                        Container(
                                          width: double.infinity,
                                          height: 0.9 * height,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.020 * height,
                                                horizontal: 0.035 * width),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(left: 0.005 * width),
                                                  child: Text(
                                                    "Dashboard",
                                                    style: Theme.of(context).textTheme.headline6.merge(style1),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.03 * height,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffdaefe1)
                                                              .withOpacity(0.5),
                                                          borderRadius: BorderRadius.all(
                                                              Radius.circular(20))),
                                                      width: 0.45 * width,
                                                      height: 0.37 * height,
                                                      child: Row(
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: 0.03 * height,
                                                                    left: 0.03 * width),
                                                                child: Text(
                                                                  "Beavers Point",
                                                                  style: Theme.of(context).textTheme.subtitle1.merge(style1),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 0.04 * height,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 0.02 * width),
                                                                child: Row(
                                                                  children: [
                                                                    card(
                                                                        "Soil Moisture",
                                                                        "12%",
                                                                        "assets/images/Group 233 2.png",
                                                                        Color(0xff055843)),
                                                                    SizedBox(
                                                                      width: 0.05 * width,
                                                                    ),
                                                                    card(
                                                                        "Temperature",
                                                                        "16",
                                                                        "assets/images/Group 237.png",
                                                                        Color(0xff055843))
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 0.05 * height,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 0.02 * width),
                                                                child: Row(
                                                                  children: [
                                                                    card(
                                                                        "Plant Risk",
                                                                        "Low",
                                                                        "assets/images/Group 233 2.png",
                                                                        Color(0xff055843)),
                                                                    SizedBox(
                                                                      width: 0.06 * width,
                                                                    ),
                                                                    card(
                                                                        "Humidity",
                                                                        "67",
                                                                        "assets/images/Group 199 2.png",
                                                                        Color(0xff055843))
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 0.04*width,
                                                          ),
                                                          GeoPaint(),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 0.03 * width,
                                                    ),
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffdaefe1)
                                                                .withOpacity(0.5),
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(20))),
                                                        width: 0.22 * width,
                                                        height: 0.37 * height,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: 0.030 * height,
                                                                  left: 0.015 * width),
                                                              child: Text(
                                                                  "Registered Users",
                                                                  style: Theme.of(context).textTheme.subtitle1.merge(style1)
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: 0.015 * height,
                                                                    left: 0.005 * width),
                                                                child: ListView.builder(
                                                                    shrinkWrap: true,
                                                                    itemCount: 10,
                                                                    itemBuilder:(context,index) {
                                                                      return ListTile(
                                                                        leading: CircleAvatar(
                                                                          backgroundColor:
                                                                          Colors.white,
                                                                        ),
                                                                        title: Padding(
                                                                          padding:  EdgeInsets.all(10.0),
                                                                          child: Text(
                                                                              "Rahul Vaidya",
                                                                              style:
                                                                              Theme
                                                                                  .of(context)
                                                                                  .textTheme
                                                                                  .subtitle2
                                                                                  .merge(style3)
                                                                          ),
                                                                        ),
                                                                        subtitle: Padding(
                                                                          padding:  EdgeInsets.only(left: 10),
                                                                          child: Text(
                                                                              "Green Valley Farm",
                                                                              style:
                                                                              Theme
                                                                                  .of(context)
                                                                                  .textTheme
                                                                                  .caption
                                                                                  .merge(style3)),
                                                                        ),
                                                                      );
                                                                    }
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 0.02 * height,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffdaefe1)
                                                                .withOpacity(0.5),
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(20))),
                                                        width: 0.32 * width,
                                                        height: 0.39 * height,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: 0.030 * height,
                                                                  left: 0.015 * width),
                                                              child: Text(
                                                                "Shool Devices",
                                                                style:
                                                                Theme.of(context).textTheme.subtitle1.merge(style2),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: 0.020 * height,
                                                                    left: 0.005 * width),
                                                                child: ListView.builder(
                                                                  itemCount: 4,
                                                                  shrinkWrap: true,
                                                                  itemBuilder:(context,index) {
                                                                    return ListTile(
                                                                      title: Text(
                                                                        "Device Tester",
                                                                        style:
                                                                        Theme.of(context).textTheme.bodyText2.merge(style3),
                                                                      ),
                                                                      trailing: Text(
                                                                        "Currently Active",style:
                                                                      Theme.of(context).textTheme.bodyText2.merge(style3).copyWith(color: Colors.green),),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                    SizedBox(
                                                      width: 0.02 * width,
                                                    ),
                                                    Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffdaefe1)
                                                                .withOpacity(0.5),
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(20))),
                                                        width: 0.37 * width,
                                                        height: 0.39 * height,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: 0.030 * height,
                                                                  left: 0.015 * width),
                                                              child: Text(
                                                                "Metosync Device Details",
                                                                style:
                                                                Theme.of(context).textTheme.subtitle1.merge(style2),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: 0.020 * height,
                                                                    left: 0.005 * width),
                                                                child: ListView.builder(
                                                                  itemCount: 4,
                                                                  shrinkWrap: true,
                                                                  itemBuilder:(context,index) {
                                                                    return ListTile(
                                                                      title: Text(
                                                                        "Device Tester",
                                                                        style:
                                                                        Theme.of(context).textTheme.bodyText2.merge(style3),
                                                                      ),
                                                                      trailing: Text(
                                                                        "Currently Active",style:
                                                                      Theme.of(context).textTheme.bodyText2.merge(style3).copyWith(color: Colors.green),),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))           //DashboardMainScreen
                            ],
                          ),
                        ],
                      )
              ),
            );
          }
        if(sizing.isMobile)
          {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications_none),
                  )
                ],
              ),
              drawer: Drawer(
                elevation: 0,
                child: SideMenuPanel()
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 1600,
                    child: Column(
                     //   mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffdaefe1)
                                    .withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20))),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: [Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 0.05 * height,
                                            left: 0.05 * width),
                                        child: Text(
                                          "Beavers Point",
                                          style: Theme.of(context).textTheme.subtitle1.merge(style1),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.04 * height,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 0.02 * width),
                                        child: Row(
                                          children: [
                                            card(
                                                "Soil Moisture",
                                                "12%",
                                                "assets/images/Group 233 2.png",
                                                Color(0xff055843)),
                                            SizedBox(
                                              width: 0.05 * width,
                                            ),
                                            card(
                                                "Temperature",
                                                "16",
                                                "assets/images/Group 237.png",
                                                Color(0xff055843))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.05 * height,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 0.02 * width),
                                        child: Row(
                                          children: [
                                            card(
                                                "Plant Risk",
                                                "Low",
                                                "assets/images/Group 233 2.png",
                                                Color(0xff055843)),
                                            SizedBox(
                                              width: 0.06 * width,
                                            ),
                                            card(
                                                "Humidity",
                                                "67",
                                                "assets/images/Group 199 2.png",
                                                Color(0xff055843))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 0.04*width,
                                  ),
                                  GeoPaint(),
                                ],
                              ),]
                            ),
                          ),
                        ),
                        SizedBox(
                      height: 10,
                    ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffdaefe1)
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.030 * height,
                                        left: 0.015 * width),
                                    child: Text(
                                        "Registered Users",
                                        style: Theme.of(context).textTheme.subtitle1.merge(style1)
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 0.015 * height,
                                          left: 0.005 * width),
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: 10,
                                          itemBuilder:(context,index) {
                                            return ListTile(
                                              leading: CircleAvatar(
                                                backgroundColor:
                                                Colors.white,
                                              ),
                                              title: Padding(
                                                padding:  EdgeInsets.all(10.0),
                                                child: Text(
                                                    "Rahul Vaidya",
                                                    style:
                                                    Theme
                                                        .of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .merge(style3)
                                                ),
                                              ),
                                              subtitle: Padding(
                                                padding:  EdgeInsets.only(left: 10),
                                                child: Text(
                                                    "Green Valley Farm",
                                                    style:
                                                    Theme
                                                        .of(context)
                                                        .textTheme
                                                        .caption
                                                        .merge(style3)),
                                              ),
                                            );
                                          }
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffdaefe1)
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.030 * height,
                                        left: 0.015 * width),
                                    child: Text(
                                      "Shool Devices",
                                      style:
                                      Theme.of(context).textTheme.subtitle1.merge(style2),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 0.020 * height,
                                          left: 0.005 * width),
                                      child: ListView.builder(
                                        itemCount: 4,
                                        shrinkWrap: true,
                                        itemBuilder:(context,index) {
                                          return ListTile(
                                            title: Text(
                                              "Device Tester",
                                              style:
                                              Theme.of(context).textTheme.bodyText2.merge(style3),
                                            ),
                                            trailing: Text(
                                              "Currently Active",style:
                                            Theme.of(context).textTheme.bodyText2.merge(style3).copyWith(color: Colors.green),),
                                          );
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffdaefe1)
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.030 * height,
                                        left: 0.015 * width),
                                    child: Text(
                                      "Metosync Device Details",
                                      style:
                                      Theme.of(context).textTheme.subtitle1.merge(style2),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 0.020 * height,
                                          left: 0.005 * width),
                                      child: ListView.builder(
                                        itemCount: 4,
                                        shrinkWrap: true,
                                        itemBuilder:(context,index) {
                                          return ListTile(
                                            title: Text(
                                              "Device Tester",
                                              style:
                                              Theme.of(context).textTheme.bodyText2.merge(style3),
                                            ),
                                            trailing: Text(
                                              "Currently Active",style:
                                            Theme.of(context).textTheme.bodyText2.merge(style3).copyWith(color: Colors.green),),
                                          );
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ]
                    ),
                  ),
                ),
              ),
            );
          }
        return CircularProgressIndicator();
      }
    );
  }

  Widget card(
    String txt1,
    String txt2,
    String img,
    Color clr,
  ) {
    return Row(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: clr,
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: Image(
              height: 25,
              width: 25,
              image: AssetImage(img),
            )
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(txt1,
                style:
    Theme.of(context).textTheme.subtitle2.merge(style3)),
            SizedBox(
              height: 5,
            ),
            Text(txt2,
                style:
                Theme.of(context).textTheme.subtitle2.merge(style1)),
          ],
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
