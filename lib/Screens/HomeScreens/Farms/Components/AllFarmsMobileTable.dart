import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

import '../../../../Routes.dart';

class AllFarmsMobileTable extends StatelessWidget {
  const AllFarmsMobileTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context,index){
        return Column(
          children: [
            Table(
              children: [
                TableRow(
                    children:[
                      TableRowTitle("Farm Name",context),
                      TableRowTitle("Beavers Point",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Soil Moisture",context),
                      TableRowTitle("12%",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Temperature",context),
                      TableRowTitle("16",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Wind",context),
                      TableRowTitle("10m/h",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Humidity",context),
                      TableRowTitle("76%",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Actions",context),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, Routes.singleFarmPage);
                      }, child: Text("View More",style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2
                          .merge(style3).copyWith(color: Colors.green,decoration: TextDecoration.underline),
                        textAlign: TextAlign.center,))
                    ]
                ),
              ],
            ),
            Divider(
              thickness: 1,
            )
          ],
        );
      },
    );
  }
  Padding TableRowTitle(String title,var context) => Padding(
    padding: EdgeInsets.only(top:10,left: 15,bottom: 10),
    child: Text(title,style: Theme.of(context).textTheme.subtitle1.merge(style1),textAlign: TextAlign.center,),
  );
}