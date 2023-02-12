import 'package:assignment3/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var MyItems = [
    {
      "img": "https://avatars.githubusercontent.com/u/54815304?v=4",
      "title": "Abdullah Al Ahad, PIC-1"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/54815304?v=4",
      "title": "Abdullah Al Ahad, PIC-2"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/54815304?v=4",
      "title": "Abdullah Al Ahad, PIC-3"
    },
    {
      "img": "https://avatars.githubusercontent.com/u/54815304?v=4",
      "title": "Abdullah Al Ahad, PIC-4"
    },
  ];

  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 3"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                mySnackBar(context, MyItems[index]['title']);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page1(
                              nameData: MyItems[index]['title']!,
                            )));
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 370,
                  child:
                      Image.network(MyItems[index]['img']!, fit: BoxFit.fill)),
            );
          }),
    );
  }
}
