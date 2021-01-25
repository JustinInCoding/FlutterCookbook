import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/animation/containerAnimation.dart';
import 'package:flutter_theme/animation/fadeAnimation.dart';
import 'package:flutter_theme/animation/pageRouteTransition.dart';
import 'package:flutter_theme/animation/physicsSimulation.dart';

class Animations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              ListTile(
                title: Text("Animate a page route transition", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageRouteTransition()),
                  );
                },
              ),
              ListTile(
                title: Text("Animate a widget using a physics simulation", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhysicsSimulation()),
                  );
                },
              ),
              ListTile(
                title: Text("Animate the properties of a container", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerAnimation()),
                  );
                },
              ),
              ListTile(
                title: Text("Fade a widget in and out", style: TextStyle(color: Colors.black54),),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FadeAnimation(title: 'Fade Animation')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}