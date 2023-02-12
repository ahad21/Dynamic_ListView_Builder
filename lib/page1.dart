import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final String nameData;

  const Page1({Key? key, required this.nameData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      body: Center(
          child: Text(
        nameData,
        style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
