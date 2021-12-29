import 'package:flutter/material.dart';

class sendDataPage extends StatelessWidget {
  const sendDataPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        color: Colors.yellow,
        child: Text('SendData'),
        onPressed: (){
          Navigator.of(context).pop();
        }),
      
    );
  }
}