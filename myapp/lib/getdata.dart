import'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class getDataPage extends StatefulWidget {
  

  @override
  _getDataPageState createState() => _getDataPageState();
}

class _getDataPageState extends State<getDataPage> {
  var _jsonpost=[];

  Future fetchData()async{
    try{
      final response=
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts")
      );
      //Get Api data as string format
      final jsonData=jsonDecode(response.body)as List;
      setState(() {
        _jsonpost=jsonData;
        print(_jsonpost[0]['title']);
      });
      //print Data
    
    }catch(err){
      print(err);
    }
  }
  @override
  void initState() {
    super.initState();
    fetchData();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          centerTitle: true,
        backgroundColor: Colors.purple,
          title: Text(
            'GetData',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            ),
            body:  Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey,
                      ),
                      child:ListView.builder(
                        itemBuilder: (context, index) {
                          final post=_jsonpost[index];
                          return Center(
                            child: Text(
                            'Title:${post['title']}\n\nbody:${post['body']}\n\n',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          );
                        },
                        itemCount: _jsonpost.length,
                      ),   
                    ),
            // body: Center(
            //   child: Column(
            //     mainAxisSize: MainAxisSize.max,
            //     verticalDirection: VerticalDirection.down,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       RaisedButton(
            //         child: Text("SendData Page"),
            //         onPressed:(){
            //           Navigator.of(context).popAndPushNamed('/sendDataPage');
            //         } ),
                   
            //     ],
            //   ),
            // ),
            ),
    );
  }
}