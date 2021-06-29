import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';
import 'package:neerxdashboard/Screens/AuthScreens/ConfirmPassword.dart';

class AddFarmForm extends StatefulWidget {
  const AddFarmForm({Key key}) : super(key: key);

  @override
  _AddFarmFormState createState() => _AddFarmFormState();
}

class _AddFarmFormState extends State<AddFarmForm> {
  TextEditingController farmName = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController crop = TextEditingController();
  TextEditingController irrigation = TextEditingController();
  TextEditingController mode = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController cycle = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController stationId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AlertDialog(
      content: Container(
        height: 500,
        width: 800,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add Farm",style: Theme.of(context).textTheme.headline6.merge(style1),),
                  IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.green,
                      onPressed: (){Navigator.pop(context);})
                ],
              ),
            ),
            Divider(color: Colors.grey,),
            Expanded(
                flex: 7,
                child: GridView.count(crossAxisCount: 3,
                //  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  childAspectRatio: 4/2,
                  crossAxisSpacing: 10,
             //     mainAxisSpacing: 5.0,
                  addRepaintBoundaries: true,
                  addAutomaticKeepAlives: true,
                  children: [
                    NewFarmFormField(title:"Farm Name",textEditingController: farmName,),
                    NewFarmFormField(title:"Location",textEditingController: location,),
                    NewFarmFormField(title:"Select Crop",textEditingController: crop,),
                    NewFarmFormField(title:"Irrigation",textEditingController: irrigation,),
                    NewFarmFormField(title:"Mode",textEditingController: mode,),
                    NewFarmFormField(title:"Rate",textEditingController: rate,),
                    NewFarmFormField(title:"Cycle",textEditingController: cycle,),
                    NewFarmFormField(title:"Area",textEditingController: area,),
                    NewFarmFormField(title:"Station ID",textEditingController: stationId,),
                  ],
                )),
            Container(
              width: 0.15*width,
              height: 0.05*height,
              decoration: BoxDecoration(
                color: Color(0xff69bf87),
                borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
              ),
              child: Center(
                child: Text(
                  "Add Farm",
                  style: Theme.of(context).textTheme.subtitle1.merge(style2).copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewFarmFormField extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  const NewFarmFormField({
    this.textEditingController,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
    );
  }
}
