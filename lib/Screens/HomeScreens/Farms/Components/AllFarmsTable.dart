import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

import '../../../../Routes.dart';

class AllFarmsTable extends StatelessWidget {
  const AllFarmsTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
              5: FractionColumnWidth(0.10),
              6:FractionColumnWidth(0.10),
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
                        "12%", style: Theme
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
                          "16%", style: Theme
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
                          "10m/h", style: Theme
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
                          "76%", style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2
                          .merge(style3),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, Routes.singleFarmPage);
                        },
                        child: Text(
                          "View More", style: Theme
                            .of(context)
                            .textTheme
                            .bodyText2
                            .merge(style3).copyWith(color: Colors.green,decoration: TextDecoration.underline),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
            ],
          );
        }
    );
  }
}