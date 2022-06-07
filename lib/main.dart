import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
    )
  );
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var like = [0, 0, 0, 0, 0];
  var name = [
    '아아아', '우우우', '가가가', '나나나나', '다다다'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogEx();
          });
        },
      ),
      appBar: AppBar(title: Text('연락처앱'),),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (c, i){

          return ListTile(
            leading: Text(like[i].toString()),
            title: Text(name[i]),
            trailing: ElevatedButton(
              child: Text("좋아요"),
              onPressed: () {
                setState(() {
                  like[i]++;
                });
              },
            ),
            contentPadding: EdgeInsets.all(5),
          );
        },
      ),
    );
  }
}


class DialogEx extends StatelessWidget {
  const DialogEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("제목"),
      content: Text("내용입니다."),

      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Back")),
        ElevatedButton(onPressed: (){
        }, child: Text("Next")),
      ],

      titleTextStyle: TextStyle(fontWeight : FontWeight.bold, color:Colors.black, fontSize: 20),
      contentTextStyle: TextStyle(fontSize: 14, color: Colors.black87),
      backgroundColor: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
    );
  }
}
