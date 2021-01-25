import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRouteTransition extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }

}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute2());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Create a Tween
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      // Create a Tween
      var curve = Curves.ease;
      var curveTween = CurveTween(curve: curve);
      // Combine the Two Tweens
      var tween = Tween(begin: begin, end: end).chain(curveTween);
      var offsetAnimation = animation.drive(tween);
      // Use an AnimatedWidget
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    }
  );
}

Route _createRoute2() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {

        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;

        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      }
  );
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }

}