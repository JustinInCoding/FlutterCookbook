import 'package:flutter/material.dart';

class MyMaterialApps extends StatelessWidget {
  const MyMaterialApps({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
