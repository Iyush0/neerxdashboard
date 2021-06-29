import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Forecast/Components/ForecastTableMobile.dart';
import 'package:neerxdashboard/Screens/HomeScreens/UserActivity/Components/UserActivityTable.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Components/UserActivityMobileTable.dart';
class UserActivityScreen extends StatefulWidget {
  const UserActivityScreen({Key key}) : super(key: key);

  @override
  _UserActivityScreenState createState() => _UserActivityScreenState();
}

class _UserActivityScreenState extends State<UserActivityScreen> {
  var x=1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(builder: (context,sizing){
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
                        flex: 1,
                        child: SideMenuPanel()
                    ),
                    Expanded(
                      flex: 6,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TopPanel(),
                            SizedBox(
                              height: height*0.035,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0.03*width,
                                ),
                                Text("User Activity",style: Theme.of(context).textTheme.headline6.merge(style1),),
                                SizedBox(
                                  width: 0.5*width,
                                ),
                                Container(
                                  width: width*0.14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                                      border: Border.all(color: Color(0xffcacaca))
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.01*height,horizontal: 0.02*width),
                                    child: DropdownButtonFormField(
                                        decoration: InputDecoration.collapsed(hintText: ''),
                                        value: x,
                                        onChanged: (vx){
                                          setState(() {
                                            x=vx;
                                          });
                                        },
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("User Registered",style: Theme.of(context).textTheme.subtitle1.merge(style3),),
                                            value: 1,
                                          ),
                                          DropdownMenuItem(child: Text("Not Registered",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                                            value: 2,
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.03*height,
                            ),
                            UserActivityTable(),
                          ],
                        ),]
                      ),
                    )
                  ],
                ),
              ],
            ),
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
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:0.03*height,left: 0.05*width),
                      child: Text("User Activity",style: Theme.of(context).textTheme.headline6.merge(style1),),
                    ),
                    SizedBox(
                        height:  0.03*height
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:0.01*height,left: 0.03*width),
                        child:  Container(
                          width: width*0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                              border: Border.all(color: Color(0xffcacaca))
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.01*height,horizontal: 0.02*width),
                            child: DropdownButtonFormField(
                                decoration: InputDecoration.collapsed(hintText: ''),
                                value: x,
                                onChanged: (vx){
                                  setState(() {
                                    x=vx;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    child: Text("User Registered",style: Theme.of(context).textTheme.subtitle1.merge(style3),),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(child: Text("Not Registered",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                                    value: 2,
                                  )
                                ]),
                          ),
                        ),
                    ),
                    SizedBox(
                        height:  0.03*height
                    ),
                    Divider(thickness: 1,),
                    UserActivityMobileTable()
                  ],
                ),]
            ),
          ),
        );
      }
      return CircularProgressIndicator();
    }
    );
  }
}
