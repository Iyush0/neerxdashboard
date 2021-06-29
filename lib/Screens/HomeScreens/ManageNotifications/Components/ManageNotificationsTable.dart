import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class ManageNotificationsTable extends StatefulWidget {
  const ManageNotificationsTable({Key key}) : super(key: key);

  @override
  _ManageNotificationsTableState createState() => _ManageNotificationsTableState();
}

class _ManageNotificationsTableState extends State<ManageNotificationsTable> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Color(0xffF3F3F3),
          width: double.infinity,
          child: Table(
            columnWidths: {
              0: FractionColumnWidth(0.25),
              1: FractionColumnWidth(0.03),
              2: FractionColumnWidth(0.03),
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                  ),
                  children: [
                    TableRowTitle("Notification Description"),
                    TableRowTitle("Users"),
                    TableRowTitle("Actions"),
                  ]),
            ],
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 9,
            itemBuilder:(context,index) {
              return  Table(
                border: TableBorder.symmetric(outside: BorderSide(width: 0.3,color: Colors.grey)),
                columnWidths: {
                  0: FractionColumnWidth(0.25),
                  1: FractionColumnWidth(0.03),
                  2: FractionColumnWidth(0.03),
                },
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20, left: 1),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utore.", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),
                            textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20,left: width*0.085),
                          child: Stack(
                            children: [
                              Positioned(
                                child: CircleAvatar(backgroundColor: Colors.red,
                                ),
                              ),
                              Positioned(
                                  child: CircleAvatar(backgroundColor: Colors.green,),
                                left: 30,
                              ),
                              Positioned(child: Row(
                                children: [
                                  CircleAvatar(backgroundColor: Colors.blue,),
                                  TextButton(onPressed: (){}, child: Text("20+",style: Theme.of(context).textTheme.bodyText1.copyWith(decoration: TextDecoration.underline).merge(style2),))
                                ],
                              ),
                              left: 60,),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ),
                        ),
                      ]),
                ],
              );
            }
        ),
      ],
    );
  }
  Padding TableRowTitle(String title) => Padding(
    padding: EdgeInsets.only(top:10,left: 15,bottom: 10),
    child: Text(title,style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center,),
  );
}
