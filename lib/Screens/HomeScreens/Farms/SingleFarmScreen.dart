import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/TopPanel.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Dashboard/Components/Geopainter.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/DeleteFarmDialog.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/DiseaseRiskChart.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/HarvestChart.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Farms/Components/SoilMoistureChart.dart';
import 'package:responsive_builder/responsive_builder.dart';


class SingleFarmScreen extends StatefulWidget {
  const SingleFarmScreen({Key key}) : super(key: key);

  @override
  _SingleFarmScreenState createState() => _SingleFarmScreenState();
}

class _SingleFarmScreenState extends State<SingleFarmScreen> {

var x=1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return ResponsiveBuilder(builder: (context, sizing) {
      if (sizing.isDesktop) {
        var x=1;
        return Scaffold(
          body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: SideMenuPanel()), // SideMenu
                Expanded(
                    flex: 6,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TopPanel(),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.02 * height, left: 0.02 * width),
                            child: Text("Farms/Beaver Farms", style: Theme
                                .of(context)
                                .textTheme
                                .bodyText2
                                .merge(style3),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.015 * height, left: 0.02 * width),
                            child: RaisedButton(
                                child: Text(
                                  "Go Back", style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1
                                    .merge(style3)
                                    .copyWith(color: Color(0xff69bf87)),
                                  textAlign: TextAlign.center,
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                    side: BorderSide(color: Color(0xff69bf87))
                                )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.02 * height, left: 0.02 * width),
                            child: Row(
                              children: [
                                Text("Beaver Farms", style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline6
                                    .merge(style1),),
                                SizedBox(
                                  width: 0.5 * width,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        iconSize: 20,
                                        color: Color(0xff1e1d6c),
                                        icon: Icon(FontAwesomeIcons.solidEdit),
                                        onPressed: () {}),
                                    Text("Edit Farm", style: Theme
                                        .of(context)
                                        .textTheme
                                        .subtitle2
                                        .merge(style3)),
                                    SizedBox(
                                      width: 0.03 * width,
                                    ),
                                    IconButton(
                                        iconSize: 22,
                                        color: Color(0xff1e1d6c),
                                        icon: Icon(Icons.delete),  onPressed: (){
                                      showDialog(context: context, builder: (BuildContext context){
                                        return DeleteFarmDialog();
                                      });
                                    }),
                                    Text("Delete Farm", style: Theme
                                        .of(context)
                                        .textTheme
                                        .subtitle2
                                        .merge(style3)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.02 * height, left: 0.02 * width),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffdaefe1)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 0.25 * width,
                                  height: 0.40 * height,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 0.03 * height,
                                            left: 0.03 * width),
                                        child: Text(
                                          "Beavers Point",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .subtitle1
                                              .merge(style1),
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
                                                Color(0xff055843),
                                                ),
                                            SizedBox(
                                              width: 0.03 * width,
                                            ),
                                            card(
                                                "Temperature",
                                                "16",
                                                "assets/images/Group 237.png",
                                                Color(0xff055843),
                                                ),
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
                                                Color(0xff055843),
                                                ),
                                            SizedBox(
                                              width: 0.04 * width,
                                            ),
                                            card(
                                                "Humidity",
                                                "67",
                                                "assets/images/Group 199 2.png",
                                                Color(0xff055843),
                                                )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 0.01 * width,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffdaefe1)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 0.25 * width,
                                  height: 0.40 * height,
                                  //   child: GeoPaint(),
                                ),
                                SizedBox(width: 0.01 * width,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffdaefe1)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 0.25 * width,
                                  height: 0.40 * height,
                                  //   child: GeoPaint(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.02 * height, left: 0.02 * width),
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffdaefe1)
                                            .withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    width: 0.38 * width,
                                    height: 0.40 * height,
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 0.03 * height,
                                            left: 0.02 * width,
                                            right: 0.02 * width,
                                            bottom: 0.03 * height),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text(
                                                  "Disease risk Timeline",
                                                  style: Theme
                                                      .of(context)
                                                      .textTheme
                                                      .subtitle1
                                                      .merge(style3),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Container(
                                                  width: width * 0.09,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(
                                                          Radius.elliptical(6, 6)),
                                                      border: Border.all(
                                                          color: Colors.black)
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        vertical: 0.01 * height,
                                                        horizontal: 0.02 * width),
                                                    child: DropdownButtonFormField(
                                                        decoration: InputDecoration
                                                            .collapsed(hintText: ''),
                                                        value: x,
                                                        onChanged: (vx) {
                                                          setState(() {
                                                            x = vx;
                                                          });
                                                        },
                                                        items: [
                                                          DropdownMenuItem(
                                                            child: Text(
                                                              "Week", style: Theme
                                                                .of(context)
                                                                .textTheme
                                                                .subtitle2
                                                                .merge(style3),),
                                                            value: 1,
                                                          ),
                                                          DropdownMenuItem(
                                                            child: Text(
                                                                "Days", style: Theme
                                                                .of(context)
                                                                .textTheme
                                                                .subtitle2
                                                                .merge(style3)),
                                                            value: 2,
                                                          )
                                                        ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 0.02 * height,
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xffdaefe1)
                                                        .withOpacity(0.5),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(20))),
                                                width: 0.32 * width,
                                                height: 0.30 * height,
                                                child: DiseaseRiskChart()),
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                SizedBox(width: 0.01 * width,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffdaefe1)
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  width: 0.38 * width,
                                  height: 0.40 * height,
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 0.04 * height,
                                          left: 0.02 * width,
                                          right: 0.02 * width,
                                          bottom: 0.04 * height),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: width * 0.09,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.elliptical(6, 6)),
                                                    border: Border.all(
                                                        color: Colors.black)
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 0.01 * height,
                                                      horizontal: 0.02 * width),
                                                  child: DropdownButtonFormField(
                                                      decoration: InputDecoration
                                                          .collapsed(hintText: ''),
                                                      value: x=1,
                                                      onChanged: (vx) {

                                                      },
                                                      items: [
                                                        DropdownMenuItem(
                                                          child: Text(
                                                            "Week", style: Theme
                                                              .of(context)
                                                              .textTheme
                                                              .subtitle2
                                                              .merge(style3),),
                                                          value: 1,
                                                        ),
                                                        DropdownMenuItem(child: Text(
                                                            "Days", style: Theme
                                                            .of(context)
                                                            .textTheme
                                                            .subtitle2
                                                            .merge(style3)),
                                                          value: 2,
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 0.02 * height,
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xffdaefe1).withOpacity(0.5),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(20))),
                                              width: 0.32 * width,
                                              height: 0.30 * height,
                                              child: Stack(
                                                children: [
                                                  HarvestChart(),
                                                  Positioned(
                                                    left: 0.24 * width,
                                                    top: 0.10 * height,
                                                    child: Container(
                                                        width: 120,
                                                        height: 120,
                                                        decoration: BoxDecoration(
                                                            color: Color(0xffdaefe1).withOpacity(0.5),
                                                            borderRadius: BorderRadius
                                                                .all(
                                                                Radius.circular(20))),
                                                        child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top: 0.02 * height,
                                                              left: 0.001 * width),
                                                          child: Row(
                                                            children: [
                                                              Column(
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .start,
                                                                  crossAxisAlignment: CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons
                                                                            .circle,
                                                                          size: 20,
                                                                          color: Colors
                                                                              .red,),
                                                                        Text("312Kg"),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons
                                                                            .circle,
                                                                          size: 20,
                                                                          color: Colors
                                                                              .green,),
                                                                        Text("234L"),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(Icons
                                                                            .circle,
                                                                          size: 20,
                                                                          color: Colors
                                                                              .blue,),
                                                                        Text("3"),
                                                                      ],
                                                                    ),
                                                                  ]
                                                              ),
                                                              SizedBox(
                                                                width: 0.01 * width,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_upward_rounded,
                                                                        color: Colors
                                                                            .green,
                                                                        size: 20,
                                                                      ),
                                                                      Text("3%"),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_upward_rounded,
                                                                        color: Colors
                                                                            .green,
                                                                        size: 20,
                                                                      ),
                                                                      Text("3%"),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_upward_rounded,
                                                                        color: Colors
                                                                            .green,
                                                                        size: 20,
                                                                      ),
                                                                      Text("3%"),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //   child: GeoPaint(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.02 * height, left: 0.02 * width),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffdaefe1)
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),
                                width: 0.38 * width,
                                height: 0.30 * height,
                                child: SoilMoistureChart(

                                )
                            ),
                          ),
                        ],
                      ),
                    )) //DashboardMainScreen
              ],
            ),
          ),
        );
      }
      if (sizing.isMobile) {
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
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.02 * height, left: 0.05 * width),
                          child: Text("Farms/Beaver Farms", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.015 * height, left: 0.05 * width),
                          child: RaisedButton(
                              child: Text(
                                "Go Back", style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(style3)
                                  .copyWith(color: Color(0xff69bf87)),
                                textAlign: TextAlign.center,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                  side: BorderSide(color: Color(0xff69bf87))
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.02 * height, left: 0.005 * width),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  iconSize: 20,
                                  color: Color(0xff1e1d6c),
                                  icon: Icon(FontAwesomeIcons.edit,color: Color(0xff1e1d6c),),
                                  onPressed: () {}),
                              Text("Edit Farm", style: Theme
                                  .of(context)
                                  .textTheme
                                  .subtitle2
                                  .merge(style3)),
                              SizedBox(
                                width: 0.03 * width,
                              ),
                              IconButton(
                                  iconSize: 22,
                                  color: Color(0xff1e1d6c),
                                  icon: Icon(Icons.delete),
                                onPressed: (){
                                  showDialog(context: context, builder: (BuildContext context){
                                    return DeleteFarmDialog();
                                  });
                                },),
                              Text("Delete Farm", style: Theme
                                  .of(context)
                                  .textTheme
                                  .subtitle2
                                  .merge(style3)),
                            ],
                          ),
                        ),
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
                          child: Column(
                            children: [
                              Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text(
                                                "Disease risk Timeline",
                                                style: Theme
                                                    .of(context)
                                                    .textTheme
                                                    .subtitle1
                                                    .merge(style3),
                                                textAlign: TextAlign.center,
                                              ),
                                              Container(
                                                width: 0.3*width,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.elliptical(6, 6)),
                                                    border: Border.all(
                                                        color: Colors.black)
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 0.01 * height,
                                                      horizontal: 0.02 * width),
                                                  child: DropdownButtonFormField(
                                                      decoration: InputDecoration
                                                          .collapsed(hintText: ''),
                                                      value: x,
                                                      onChanged: (vx) {
                                                        setState(() {
                                                          x = vx;
                                                        });
                                                      },
                                                      items: [
                                                        DropdownMenuItem(
                                                          child: Text(
                                                            "Week", style: Theme
                                                              .of(context)
                                                              .textTheme
                                                              .subtitle2
                                                              .merge(style3),),
                                                          value: 1,
                                                        ),
                                                        DropdownMenuItem(
                                                          child: Text(
                                                              "Days", style: Theme
                                                              .of(context)
                                                              .textTheme
                                                              .subtitle2
                                                              .merge(style3)),
                                                          value: 2,
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            ],
                                          ),
                          SizedBox(
                                            height: 0.05 * height,
                                          ),
                          Container(
                                            width: 0.8*width,
                                              height: 0.3*height,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffdaefe1)
                                                      .withOpacity(0.5),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(20))),
                                              child: DiseaseRiskChart()),
                            ],
                          ),
                        ),
                        SizedBox(width: 0.01 * height,),
                         Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffdaefe1)
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))),

                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0.04 * height,
                                        left: 0.02 * width,
                                        right: 0.02 * width,
                                        bottom: 0.04 * height),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 0.3*width,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.elliptical(6, 6)),
                                                  border: Border.all(
                                                      color: Colors.black)
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 0.01 * height,
                                                    horizontal: 0.02 * width),
                                                child: DropdownButtonFormField(
                                                    decoration: InputDecoration
                                                        .collapsed(hintText: ''),
                                                    value: x=1,
                                                    onChanged: (vx) {

                                                    },
                                                    items: [
                                                      DropdownMenuItem(
                                                        child: Text(
                                                          "Week", style: Theme
                                                            .of(context)
                                                            .textTheme
                                                            .subtitle2
                                                            .merge(style3),),
                                                        value: 1,
                                                      ),
                                                      DropdownMenuItem(child: Text(
                                                          "Days", style: Theme
                                                          .of(context)
                                                          .textTheme
                                                          .subtitle2
                                                          .merge(style3)),
                                                        value: 2,
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 0.02 * height,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xffdaefe1).withOpacity(0.5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            width: 0.8 * width,
                                            height: 0.30 * height,
                                            child: Stack(
                                              children: [
                                                HarvestChart(),
                                                Positioned(
                                                  left: 0.54 * width,
                                                  top: 0.10 * height,
                                                  child: Container(
                                                      width: 120,
                                                      height: 120,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffdaefe1).withOpacity(0.5),
                                                          borderRadius: BorderRadius
                                                              .all(
                                                              Radius.circular(20))),
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: 0.02 * height,
                                                            left: 0.001 * width),
                                                        child: Row(
                                                          children: [
                                                            Column(
                                                                mainAxisAlignment: MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Icon(Icons
                                                                          .circle,
                                                                        size: 20,
                                                                        color: Colors
                                                                            .red,),
                                                                      Text("312Kg"),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(Icons
                                                                          .circle,
                                                                        size: 20,
                                                                        color: Colors
                                                                            .green,),
                                                                      Text("234L"),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(Icons
                                                                          .circle,
                                                                        size: 20,
                                                                        color: Colors
                                                                            .blue,),
                                                                      Text("3"),
                                                                    ],
                                                                  ),
                                                                ]
                                                            ),
                                                            SizedBox(
                                                              width: 0.01 * width,
                                                            ),
                                                            Column(
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_upward_rounded,
                                                                      color: Colors
                                                                          .green,
                                                                      size: 20,
                                                                    ),
                                                                    Text("3%"),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_upward_rounded,
                                                                      color: Colors
                                                                          .green,
                                                                      size: 20,
                                                                    ),
                                                                    Text("3%"),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_upward_rounded,
                                                                      color: Colors
                                                                          .green,
                                                                      size: 20,
                                                                    ),
                                                                    Text("3%"),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                //   child: GeoPaint(),
                              ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(child: Container(
                          height: 0.01*height,
                            decoration: BoxDecoration(
                                color: Color(0xffdaefe1)
                                    .withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20))),
                            child: SoilMoistureChart(
                            )
                        ),)
            ]
                    ),
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
    )
{
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
              Theme
                  .of(context)
                  .textTheme
                  .subtitle2
                  .merge(style3)),
          SizedBox(
            height: 5,
          ),
          Text(txt2,
              style:
              Theme
                  .of(context)
                  .textTheme
                  .subtitle2
                  .merge(style1)),
        ],
      ),
    ],
  );
}
}

