import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Text"),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: Text(
            "Hello, World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}
