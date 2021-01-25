import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  final String title;

  FadeAnimation({Key key, this.title}) : super(key: key);

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {

  // Whether the green box should be visible.
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: Icon(Icons.flip),
        ),
      ),
    );
  }
}
