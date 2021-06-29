import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/FunctionsAndConstants/functions.dart';

import 'NotificationDialogBox.dart';

class TopPanel extends StatefulWidget {
  const TopPanel({Key key}) : super(key: key);

  @override
  _TopPanelState createState() => _TopPanelState();
}

class _TopPanelState extends State<TopPanel> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      color: Color(0xfff2fff9),
      height: 70,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(right: width*0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: (){
                },
                child: Icon(FontAwesomeIcons.bell))
          ],
        ),
      ),
    ) ;
  }
}

