import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class DrawerTile extends StatefulWidget {
  final String title;
  final String iconImg;
  final int idx;
  bool colorTracker;
  DrawerTile({this.title, this.iconImg, this.idx, this.colorTracker});

  @override
  _DrawerTileState createState() => _DrawerTileState();
}

class _DrawerTileState extends State<DrawerTile> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListTile(
      tileColor: widget.colorTracker ? Colors.black26 : Colors.transparent,
      leading: Image(
        height: 20,
        width: 20,
        color: Colors.white,
        image: AssetImage(widget.iconImg,
        ),
      ),
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.subtitle1.merge(style3).copyWith(color: Colors.white),
      ),
    );
  }
}
