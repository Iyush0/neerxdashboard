import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class CreateNotificationDialog extends StatefulWidget {
  const CreateNotificationDialog({Key key}) : super(key: key);

  @override
  _CreateNotificationDialogState createState() => _CreateNotificationDialogState();
}

class _CreateNotificationDialogState extends State<CreateNotificationDialog> {
  var x=1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AlertDialog(
      content: Container(
        width: 650,
        height: 450,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Create Notification",style: Theme.of(context).textTheme.headline6.merge(style1),),
                IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.green,
                    onPressed: (){Navigator.pop(context);})
              ],
            ),
            Divider(
              thickness: 1,
              color: Color(0xffcacaca),
            ),
            SizedBox(
              height: 0.03*height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notification Description",
                  style: Theme.of(context).textTheme.subtitle1.merge(style3),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffD2D8CF)),
                  ),
                  child: TextFormField(
                    maxLines: 3,
                    //  controller: email,
                    //     keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Field is empty';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.03*height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Add Users"),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                      border: Border.all(color: Color(0xffcacaca))
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.01*height,horizontal: 0.02*width),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration.collapsed(hintText: 'Rahul'),
                        value: x,
                        onChanged: (vx){
                          setState(() {
                            x=vx;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text("All Users",style: Theme.of(context).textTheme.subtitle1.merge(style3),),
                            value: 1,
                          ),
                          DropdownMenuItem(child: Row(
                            children: [
                              Text("Rahul",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                              SizedBox(width: 20,),
                              Checkbox(value: false, onChanged: (value){
                              })
                            ],
                          ),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Row(
                            children: [
                              Text("Rahul",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                              SizedBox(width: 20,),
                              Checkbox(value: false, onChanged: (value){})
                            ],
                          ),
                            value: 3,
                          ),
                          DropdownMenuItem(child: Row(
                            children: [
                              Text("Rahul",style: Theme.of(context).textTheme.subtitle1.merge(style3)),
                              SizedBox(width: 20,),
                              Checkbox(value: false, onChanged: (value){})
                            ],
                          ),
                            value: 4,
                          )
                        ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
