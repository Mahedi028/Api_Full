import 'package:flutter/material.dart';
import 'package:myapp/getdata.dart';
import 'package:myapp/sendDataPage.dart';
import 'getdata.dart';
import 'sendDataPage.dart';
void main()=>runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: getDataPage(),
      routes: {
        '/':(context)=>getDataPage(),
        '/sendDataPage':(context)=>sendDataPage(),
      },
    );
  }
}