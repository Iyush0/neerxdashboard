import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Nowcast/Components/NowcastMobileTable.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Nowcast/Components/NowcastTable.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NowcastScreen extends StatefulWidget {
  const NowcastScreen({Key key}) : super(key: key);

  @override
  _NowcastScreenState createState() => _NowcastScreenState();
}

class _NowcastScreenState extends State<NowcastScreen> {
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
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
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
                                  Text("Nowcast",style: Theme.of(context).textTheme.headline6.merge(style1),),
                                  SizedBox(
                                    width: 0.65*width,
                                  ),
                                  Container(
                                      width: 0.07*width,
                                      height: 0.05*height,
                                      decoration: BoxDecoration(
                                        color: Color(0xff69bf87),
                                        borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                                      ),
                                      child: Center(child: Text("Export Data",style: Theme.of(context).textTheme.subtitle1.merge(style3),))),
                                ],
                              ),
                              SizedBox(
                                height: 0.03*height,
                              ),
                              Container(
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
                                          Checkbox(
                                            value: false,
                                          ),
                                          TableRowTitle("Farm Name"),
                                          TableRowTitle('Disease Risk'),
                                          TableRowTitle("Harvested"),
                                          TableRowTitle("Watered"),
                                          TableRowTitle("Humidity")
                                        ]),
                                  ],
                                ),
                              ),
                                NowcastTable(),
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
                      child: Text("Nowcast",style: Theme.of(context).textTheme.headline6.merge(style1),),
                    ),
                    SizedBox(
                    height:  0.03*height
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:0.01*height,left: 0.03*width),
                      child: Container(
                          width: 0.4*width,
                          height: 0.05*height,
                          decoration: BoxDecoration(
                            color: Color(0xff69bf87),
                            borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                          ),
                          child: Center(child: Text("Export Data",style: Theme.of(context).textTheme.subtitle1.merge(style3),))),
                    ),
                    SizedBox(
                        height:  0.03*height
                    ),
                       NowcastMobileTable()
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
  Padding TableRowTitle(String title) => Padding(
    padding: EdgeInsets.only(top:10,left: 15,bottom: 10),
    child: Text(title,style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center,),
  );
}
