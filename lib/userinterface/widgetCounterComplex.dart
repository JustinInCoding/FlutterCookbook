import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text("Count: $count");
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text("Increment"),
    );
  }
}

class CounterComplex extends StatefulWidget {
  const CounterComplex({Key key}) : super(key: key);

  @override
  _CounterComplexState createState() => _CounterComplexState();
}

class _CounterComplexState extends State<CounterComplex> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Complex"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CounterIncrementor(onPressed: _increment,),
          SizedBox(width: 16,),
          CounterDisplay(count: _counter,),
        ],
      ),
    );
  }
}


