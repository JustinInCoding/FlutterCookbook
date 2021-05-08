import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Button"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("MyButton was tapped!");
          },
          child: Container(
            height: 50.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.lightGreen[500],
            ),
            child: Center(
              child: Text("Engage"),
            ),
          ),
        ),
      ),
    );
  }
}
