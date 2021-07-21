
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Dashboard/Components/DrawerTile.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Dashboard/Components/Geopainter.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/AddFarmForm.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/PendingFarmsMobileTable.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/PendingFarmsTable.dart';
import 'package:neerxdashboard/Services/GetServices.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../Routes.dart';
import 'Components/AllFarmsMobileTable.dart';
import 'Components/AllFarmsTable.dart';
class FarmPage extends StatefulWidget {
  const FarmPage({Key key}) : super(key: key);
  @override
  _FarmPageState createState() => _FarmPageState();
}

class _FarmPageState extends State<FarmPage> {
  int x=1;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetServices().getApprovedFarms();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
      builder: (context,sizing)
      {
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
                                              Text("Farm Reports",style: Theme.of(context).textTheme.headline6.merge(style1),),
                                              SizedBox(
                                                width: 0.4*width,
                                              ),
                                              Container(
                                                width: width*0.1,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                                                    border: Border.all(color: Colors.black)
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
                                                          child: Text("Show All",style: Theme.of(context).textTheme.subtitle1.merge(style3),),
                                                          value: 1,
                                                        ),
                                                        DropdownMenuItem(child: Text("Pending",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                                                          value: 2,
                                                        )
                                                      ]),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 0.060*width,
                                              ),
                                              IconButton(icon: Icon(
                                                  FontAwesomeIcons.plusCircle),
                                                onPressed: (){
                                                  showDialog(context: context, builder: (BuildContext context){
                                                    return AddFarmForm();
                                                  });
                                                },
                                                color: Color(0xff1e1d6c),
                                              ),
                                              SizedBox(
                                                width: 0.023*width,
                                              ),
                                              Text("Add Farm",style: Theme.of(context).textTheme.subtitle1.merge(style2),),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 0.03*height,
                                          ),
                                          x==1? Container(
                                            color: Color(0xffF3F3F3),
                                            width: double.infinity,
                                            child: Table(
                                              columnWidths: {
                                                0: FractionColumnWidth(0.10),
                                                1: FractionColumnWidth(0.03),
                                                2: FractionColumnWidth(0.12),
                                                3: FractionColumnWidth(0.08),
                                                4: FractionColumnWidth(0.08),
                                                4: FractionColumnWidth(0.10),
                                                5: FractionColumnWidth(0.10),
                                              },
                                              children: [
                                                TableRow(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffF3F3F3),
                                                    ),
                                                    children: [
                                                      TableRowTitle("Farm Name"),
                                                      TableRowTitle("Soil Moisture"),
                                                      TableRowTitle('Temperature'),
                                                      TableRowTitle("Wind"),
                                                      TableRowTitle("Humidity"),
                                                      TableRowTitle("Actions")
                                                    ]),
                                              ],
                                            ),
                                          ):Container(),
                                          x==1?
                                          AllFarmsTable():PendingFarmsTable(),
                                        ],
                                      ),]
                                  ))           //DashboardMainScreen
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
                  scrollDirection: Axis.vertical,
                  children: [Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:0.03*height,left: 0.05*width),
                        child: Text("Farm Reports",style: Theme.of(context).textTheme.headline6.merge(style1),),
                      ),
                      SizedBox(height: 0.03*height,),
                      Padding(
                        padding: EdgeInsets.only(left: 0.02*width),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.03*width,
                            ),
                            Expanded(
                              child: Container(
                               width: width*0.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                                    border: Border.all(color: Colors.black)
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
                                          child: Text("Show All",style: Theme.of(context).textTheme.subtitle1.merge(style3),),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(child: Text("Pending",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                                          value: 2,
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 0.060*width,
                            ),
                            Expanded(
                              child: IconButton(icon: Icon(
                                  FontAwesomeIcons.plusCircle),
                                onPressed: (){
                                  showDialog(context: context, builder: (BuildContext context){
                                    return AddFarmForm();
                                  });
                                },
                                color: Color(0xff1e1d6c),
                              ),
                            ),
                            Expanded(child: Text("Add Farm",style: Theme.of(context).textTheme.subtitle1.merge(style2),)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.03*height),
                        child: x==1?AllFarmsMobileTable():PendingFarmsMobileTable()
                      )
                    ],
                  ),]
                ),
              ),
            );
          }
        return CircularProgressIndicator();
      },
    );
  }

  Padding TableRowTitle(String title) => Padding(
    padding: EdgeInsets.only(top:10,left: 15,bottom: 10),
    child: Text(title,style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center,),
  );
}

