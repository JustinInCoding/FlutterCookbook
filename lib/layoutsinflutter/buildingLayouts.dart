import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_theme/layoutsinflutter/materialApps.dart';
import 'package:flutter_theme/layoutsinflutter/nonMaterialApps.dart';
import 'package:flutter_theme/layoutsinflutter/pavlova.dart';

class BuildingLayouts extends StatelessWidget {
  const BuildingLayouts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Building layouts"),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              ListTile(
                title: Text("Material Apps", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMaterialApps()));
                },
              ),
              ListTile(
                title: Text("Non Material Apps", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NonMaterialApp()));
                },
              ),
              ListTile(
                title: Text("Pavlova", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pavlova()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
