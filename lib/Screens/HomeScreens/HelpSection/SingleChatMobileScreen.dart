import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/HomeScreens/Components/SideMenuPanel.dart';

class SingleChatMobileScreen extends StatefulWidget {
  const SingleChatMobileScreen({Key key}) : super(key: key);

  @override
  _SingleChatMobileScreenState createState() => _SingleChatMobileScreenState();
}

class _SingleChatMobileScreenState extends State<SingleChatMobileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left:0.02*width,top: 0.02*height),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:Colors.black12,
              ),
              title: Text(
                  "Rahul Vaidya",
                  style:
                  Theme
                      .of(context)
                      .textTheme
                      .subtitle1
                      .merge(style1)
              ),
            ),
          ),
          SizedBox(
            height: 0.02*height,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: 0.6,
                  child: Divider(thickness: 1,color: Color(0xffcacaca),
                  ),
                ),
              ),
              Container(
                  width: 0.2*width,
                  //       height: 0.04*height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffcacaca))
                  ),
                  child: Center(child: Text("Today",style: Theme.of(context).textTheme.subtitle1.merge(style3),))),
              Expanded(
                flex: 5,
                child: Container(
                  width:0.6*width,
                  child: Divider(thickness: 1,color: Color(0xffcacaca),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.7*height,
          ),
          Container(
          //  width: 0.6*width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffc4c4c4)
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding:  EdgeInsets.only(left:8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your reply",
                          hintStyle: Theme.of(context).textTheme.bodyText1.merge(style3).copyWith(color: Color(0xff787878)),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.2*width,
                ),
                Expanded(
                    child: IconButton(icon: Icon(FontAwesomeIcons.telegramPlane,color: Color(0xff69bf87),), onPressed: (){}))
              ],
            ),
          )
        ],
      ),
    );
  }
}
