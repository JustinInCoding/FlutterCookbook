import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Container"),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Center(
          child: Text(
            "Container",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
