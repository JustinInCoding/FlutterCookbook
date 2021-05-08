import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  const WidgetColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Column"),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: Text(
            "Column",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
