import 'package:flutter/material.dart';
import 'package:flutter_theme/userinterface/materialComponents.dart';
import 'package:flutter_theme/userinterface/shoppingList.dart';
import 'package:flutter_theme/userinterface/widgetColumn.dart';
import 'package:flutter_theme/userinterface/widgetContainer.dart';
import 'package:flutter_theme/userinterface/widgetCounter.dart';
import 'package:flutter_theme/userinterface/widgetCounterComplex.dart';
import 'package:flutter_theme/userinterface/widgetRow.dart';
import 'package:flutter_theme/userinterface/widgetStack.dart';
import 'package:flutter_theme/userinterface/widgetText.dart';

import 'basicWidgets.dart';
import 'handlingGesture.dart';

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
              ListTile(
                title: Text("Row", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetRow()),
                  );
                },
              ),
              ListTile(
                title: Text("Column", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetColumn()),
                  );
                },
              ),
              ListTile(
                title: Text("Stack", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetStack()),
                  );
                },
              ),
              ListTile(
                title: Text("Container", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetContainer()),
                  );
                },
              ),
              ListTile(
                title: Text("Basic Widgets", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BasicWidgets()),
                  );
                },
              ),
              ListTile(
                title: Text("Using Material Components", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutorialHome()),
                  );
                },
              ),
              ListTile(
                title: Text("Handling gestures", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyButton()),
                  );
                },
              ),
              ListTile(
                title: Text("Changing widgets in response to input", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Counter()),
                  );
                },
              ),
              ListTile(
                title: Text("Changing widgets in response to input complex", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  CounterComplex()),
                  );
                },
              ),
              ListTile(
                title: Text("Bringing it all together", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ShoppingListDemo()),
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