import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  const WidgetRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Widget Row"
        ),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: Text(
            "Row",
            style: TextStyle(color: Colors.black),
          )
        ),
      ),
    );
  }
}
