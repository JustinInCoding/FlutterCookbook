import 'package:flutter/material.dart';
import 'package:flutter_theme/myCustomForm.dart';
import 'package:flutter_theme/tabPage.dart';
import 'package:flutter_theme/userinterface/introductionWidgets.dart';

import 'animation/animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final appName = 'Custom Themes';

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.white,
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
              ListTile(
                title: Text("User interface", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntroductionToWidgets()),
                  );
                },
              ),
              ListTile(
                title: Text("Animation", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Animations()),
                  );
                },
              ),
              ListTile(
                title: Text("Build a form with validation", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCustomForm()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: new Theme(
        // data: Theme.of(context).copyWith(accentColor: Colors.yellow),
        data: Theme.of(context).copyWith(colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow)),
        child: new FloatingActionButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabBarDemo()),
            );
          },
          child: new Icon(Icons.add),
        ),
      ),
    );
  }

}

