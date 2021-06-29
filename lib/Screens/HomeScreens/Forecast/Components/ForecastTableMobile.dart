import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class ForecastMobileTable extends StatefulWidget {
  const ForecastMobileTable({Key key}) : super(key: key);

  @override
  _ForecastMobileTableState createState() => _ForecastMobileTableState();
}

class _ForecastMobileTableState extends State<ForecastMobileTable> {
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
                      TableRowTitle("Select",context),
                      Checkbox(value: false, onChanged: (v){})
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Name",context),
                      TableRowTitle("12%",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Health",context),
                      TableRowTitle("16",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Spray Schedule",context),
                      TableRowTitle("10m/h",context)
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
