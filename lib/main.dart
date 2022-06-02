import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home : Image.asset('assets/tiger.png')
      // home : SizedBox()
      home : Scaffold(
        appBar : AppBar( title: Text('상단 타이틀')),
        body : Center(
          child: Container(
            width: 50, height: 50,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black)
            ),
          ),
        ),


        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 100,
            child: Row(
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        ),
      )
    );
  }
}
