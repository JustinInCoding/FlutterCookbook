import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MyScaffold()
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              "Example title",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Hello, world!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // 对称
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Horizontal, linear
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null
          ),
          Expanded(
              child: title
          ),
          IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: null
          )
        ],
      ),
    );
  }
}

