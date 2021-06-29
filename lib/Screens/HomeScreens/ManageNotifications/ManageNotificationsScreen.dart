import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/ManageNotifications/Components/CreateNotificationDialog.dart';
import 'package:neerxdashboard/Screens/HomeScreens/ManageNotifications/Components/ManageNotificationsTable.dart';
import 'package:neerxdashboard/Screens/HomeScreens/UserActivity/Components/UserActivityTable.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ManageNotificationsScreen extends StatefulWidget {
  const ManageNotificationsScreen({Key key}) : super(key: key);

  @override
  _ManageNotificationsScreenState createState() => _ManageNotificationsScreenState();
}

class _ManageNotificationsScreenState extends State<ManageNotificationsScreen> {
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
                                  Text("Manage Notifications",style: Theme.of(context).textTheme.headline6.merge(style1),),
                                  SizedBox(
                                    width: 0.50*width,
                                  ),
                                  IconButton(icon: Icon(
                                      FontAwesomeIcons.plusCircle),
                                    onPressed: (){
                                      showDialog(context: context, builder: (BuildContext context){
                                        return CreateNotificationDialog();
                                      });
                                    },
                                    color: Color(0xff1e1d6c),
                                  ),
                                  SizedBox(
                                    width: 0.045*width,
                                  ),
                                  Text("Create Notification",style: Theme.of(context).textTheme.subtitle1.merge(style2),),
                                ],
                              ),
                              SizedBox(
                                height: 0.03*height,
                              ),
                              ManageNotificationsTable(),
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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0.04*width,top: 0.02*height),
                  child: Text("Manage Notification",style: Theme.of(context).textTheme.headline6.merge(style1),),
                ),
                SizedBox(
                  height: 0.02*height,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 0.45*width,
                    ),
                    IconButton(icon: Icon(
                        FontAwesomeIcons.plusCircle),
                      onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return CreateNotificationDialog();
                        });
                      },
                      color: Color(0xff1e1d6c),
                    ),
                    Text("Create Notification",style: Theme.of(context).textTheme.subtitle1.merge(style2),),
                  ],
                ),
                SizedBox(
                  height: 0.02*height,
                ),
                ListView.builder(
                  shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context,index){
                  return Container(
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: EdgeInsets.only(left: 0.025*width),
                         child: Text("Notification Description",style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center),
                       ),
                       Padding(
                         padding: EdgeInsets.only(
                             top: 20, bottom: 20, left: 10),
                         child: Text(
                           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utore.", style: Theme
                             .of(context)
                             .textTheme
                             .bodyText2
                             .merge(style3),
                           textAlign: TextAlign.start,),
                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 0.03*width),
                         child: Text("Users",style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center),
                       ),
                       Padding(
                           padding: EdgeInsets.only(
                               top: 20, bottom: 20,left: 0.05*width),
                           child: Container(
                             width: double.infinity,
                             child: Stack(
                               children: [
                                 Positioned(
                                   child: CircleAvatar(backgroundColor: Colors.red,
                                   ),
                                 ),
                                 Positioned(
                                   child: CircleAvatar(backgroundColor: Colors.green,),
                                   left: 10,
                                 ),
                                 Positioned(
                                   child: Row(
                                   children: [
                                     CircleAvatar(backgroundColor: Colors.blue,),
                                     TextButton(onPressed: (){}, child: Text("20+",style: Theme.of(context).textTheme.bodyText1.copyWith(decoration: TextDecoration.underline).merge(style2),))
                                   ],
                                 ),
                                   left: 20,),
                               ],
                             ),
                           )
                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 0.03*width),
                         child: Text("Actions",style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center),
                       ),
                       Padding(
                         padding: EdgeInsets.only(
                             top: 20, bottom: 20,left: 0.03*width),
                         child: Row(
                           children: [
                             RaisedButton(
                                 child: Text(
                                   "Edit", style: Theme
                                     .of(context)
                                     .textTheme
                                     .bodyText2
                                     .merge(style3).copyWith(color: Colors.blueAccent),
                                   textAlign: TextAlign.center,
                                 ),
                                 color: Colors.white,
                                 onPressed: (){},
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(15)),
                                     side: BorderSide(color: Colors.blueAccent)
                                 )
                             ),
                             SizedBox(
                               width: 0.04*width,
                             ),
                             RaisedButton(
                                 child: Text(
                                   "Delete", style: Theme
                                     .of(context)
                                     .textTheme
                                     .bodyText2
                                     .merge(style3).copyWith(color: Colors.red),
                                   textAlign: TextAlign.center,
                                 ),
                                 color: Colors.white,
                                 onPressed: (){},
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(15)),
                                     side: BorderSide(color: Colors.red)
                                 )
                             ),
                           ],
                           mainAxisAlignment: MainAxisAlignment.start,
                         ),
                       ),
                       Divider(
                         thickness: 1,
                       ),
                     ],
                    ),
                  );
                })
              ],
            ),
          ),
        );
      }
      return CircularProgressIndicator();
    }
    );
  }
}
