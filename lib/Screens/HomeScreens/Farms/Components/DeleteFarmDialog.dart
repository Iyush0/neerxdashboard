import 'package:flutter/material.dart';
import 'package:neerxdashboard/FunctionsAndConstants/constants.dart';

class DeleteFarmDialog extends StatefulWidget {
  const DeleteFarmDialog({Key key}) : super(key: key);

  @override
  _DeleteFarmDialogState createState() => _DeleteFarmDialogState();
}

class _DeleteFarmDialogState extends State<DeleteFarmDialog> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      actions: [
        TextButton(onPressed: (){}, child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 3),
              child: Center(child: Text("No",style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),)),
            ))),
        TextButton(onPressed: (){}, child: Container(
            decoration: BoxDecoration(
              color: Color(0xffce2929),
    borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
  //  border: Border.all(color: Colors.black)
    ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 5),
              child: Center(child: Text("Yes",style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),)),
            ))),
      ],
      content: Container(
          child: Text("Are you sure you want to delete this farm?",style: Theme.of(context).textTheme.caption.merge(style1),)
      ),
    );
  }
}
