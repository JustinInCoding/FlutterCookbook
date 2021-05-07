import 'package:flutter/material.dart';
import 'package:flutter_theme/userinterface/widgetText.dart';

class IntroductionToWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              ListTile(
                title: Text("Text", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetText()),
                  );
                },
              ),
            ],
          ),
        )
      ),
    );
  }

}