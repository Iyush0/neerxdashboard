import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class PendingFarmsTable extends StatefulWidget {
  const PendingFarmsTable({Key key}) : super(key: key);

  @override
  _PendingFarmsTableState createState() => _PendingFarmsTableState();
}

class _PendingFarmsTableState extends State<PendingFarmsTable> {
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
              0: FractionColumnWidth(0.10),
              1: FractionColumnWidth(0.03),
              2: FractionColumnWidth(0.12),
              3: FractionColumnWidth(0.08),
              4: FractionColumnWidth(0.08),
            },
            children: [
              TableRow(
                  decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                  ),
                  children: [
                    TableRowTitle("Farm Name"),
                    TableRowTitle("Customer Name"),
                    TableRowTitle('Farm Size'),
                    TableRowTitle("Crop"),
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
                  0: FractionColumnWidth(0.10),
                  1: FractionColumnWidth(0.03),
                  2: FractionColumnWidth(0.12),
                  3: FractionColumnWidth(0.08),
                  4: FractionColumnWidth(0.08),
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
                            "Beavers Farm", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),
                            textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20),
                          child: Text(
                            "Rahul Mishra", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),
                            textAlign: TextAlign.center,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20,right: 10),
                          child: Text(
                              "1000sq.ft", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20),
                          child: Text(
                              "Tomato", style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .merge(style3),
                              textAlign: TextAlign.center),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20),
                          child: Row(
                            children: [
                              RaisedButton(
                                child: Text(
                                  "Approve", style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText2
                                    .merge(style3).copyWith(color: Colors.green),
                                  textAlign: TextAlign.center,
                                ),
                                color: Colors.white,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                    side: BorderSide(color: Colors.green)
                                )
                              ),
                              RaisedButton(
                                child: Text(
                                  "Reject", style: Theme
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