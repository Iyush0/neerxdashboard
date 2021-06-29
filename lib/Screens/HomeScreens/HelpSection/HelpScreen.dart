import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Routes.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
      builder: (context, sizing) {
        if (sizing.isDesktop) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: SideMenuPanel()), // SideMenu
                      Expanded(
                          flex: 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TopPanel(),
                              SizedBox(
                                height: height * 0.035,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0.04*width,top: 0.02*height),
                                child: Text("Help",style: Theme.of(context).textTheme.headline6.merge(style1),),
                              ),
                              SizedBox(
                                height: height * 0.035,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0.02*width,top: 0.01*height),
                                child: Container(
                                  width: 0.8*width,
                                  height: 0.7*height,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffcacaca))
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex:1,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: 10,
                                            itemBuilder: (context,index){
                                              return Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: ListTile(
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                        Colors.white,
                                                      ),
                                                      title: Text(
                                                          "Rahul Vaidya",
                                                          style:
                                                          Theme
                                                              .of(context)
                                                              .textTheme
                                                              .subtitle1
                                                              .merge(style3)
                                                      ),
                                                      subtitle: Text(
                                                          "Green Valley Farm",
                                                          style:
                                                          Theme
                                                              .of(context)
                                                              .textTheme
                                                              .caption
                                                              .merge(style3).copyWith(fontSize: 12)),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                    color: Color(0xffcacaca),
                                                  )
                                                ],
                                              );
                                            },
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                        color: Color(0xffcacaca),
                                      ),
                                      Expanded(
                                          flex:4,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left:0.02*width,top: 0.02*height),
                                                child: ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundColor:Colors.black12,
                                                  ),
                                                  title: Text(
                                                      "Rahul Vaidya",
                                                      style:
                                                      Theme
                                                          .of(context)
                                                          .textTheme
                                                          .subtitle1
                                                          .merge(style1)
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.02*height,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width:0.27*width,
                                                    child: Divider(thickness: 1,color: Color(0xffcacaca),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 0.06*width,
                                                   //       height: 0.04*height,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(15),
                                                        border: Border.all(color: Color(0xffcacaca))
                                                      ),
                                                      child: Center(child: Text("Today",style: Theme.of(context).textTheme.subtitle1.merge(style3),))),
                                                  Container(
                                                    width:0.3*width,
                                                    child: Divider(thickness: 1,color: Color(0xffcacaca),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 0.47*height,
                                              ),
                                              Container(
                                                width: 0.6*width,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Color(0xffc4c4c4)
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 6,
                                                      child: Padding(
                                                        padding:  EdgeInsets.only(left:8.0),
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "Enter your reply",
                                                            hintStyle: Theme.of(context).textTheme.bodyText1.merge(style3).copyWith(color: Color(0xff787878)),
                                                            border: InputBorder.none
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 0.2*width,
                                                    ),
                                                    Expanded(
                                                        child: IconButton(icon: Icon(FontAwesomeIcons.telegramPlane,color: Color(0xff69bf87),), onPressed: (){}))
                                                  ],
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )) //DashboardMainScreen
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
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0.04*width,top: 0.02*height),
                      child: Text("Help",style: Theme.of(context).textTheme.headline6.merge(style1),),
                    ),
                    SizedBox(height: 0.02*height,),
                    Divider(
                      thickness: 1,
                      color: Color(0xffcacaca),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor:
                                  Colors.white,
                                ),
                                title: Text(
                                    "Rahul Vaidya",
                                    style:
                                    Theme
                                        .of(context)
                                        .textTheme
                                        .subtitle1
                                        .merge(style3)
                                ),
                                subtitle: Text(
                                    "Green Valley Farm",
                                    style:
                                    Theme
                                        .of(context)
                                        .textTheme
                                        .caption
                                        .merge(style3).copyWith(fontSize: 12)),
                                onTap: (){
                                  Navigator.pushNamed(context, Routes.singleChatScreen);
                                },
                              ),
                            ),
                           /* Divider(
                              thickness: 1,
                              color: Color(0xffcacaca),
                            )*/
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          }
        return CircularProgressIndicator();
      },
    );
  }
}
