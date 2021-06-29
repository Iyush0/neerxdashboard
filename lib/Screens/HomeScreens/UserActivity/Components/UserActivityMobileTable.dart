import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class UserActivityMobileTable extends StatefulWidget {
  const UserActivityMobileTable({Key key}) : super(key: key);

  @override
  _UserActivityMobileTableState createState() => _UserActivityMobileTableState();
}

class _UserActivityMobileTableState extends State<UserActivityMobileTable> {
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
                      TableRowTitle("User",context),
                      TableRowTitle("Beavers Point",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Farm Name",context),
                      TableRowTitle("12%",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Phone Number",context),
                      TableRowTitle("16",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("E-mail",context),
                      TableRowTitle("10m/h",context)
                    ]
                ),
                TableRow(
                    children:[
                      TableRowTitle("Actions",context),
                      Row(
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
