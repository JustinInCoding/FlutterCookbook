import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetStack extends StatelessWidget {
  const WidgetStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Widget Stack"
        ),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Container(
          child: Center(
            child: Text(
              "Stack",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
