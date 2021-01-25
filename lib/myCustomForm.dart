import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  final _scaffoldkey = GlobalKey<ScaffoldState>();

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Custom Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField (
              decoration: InputDecoration(
                labelText: 'Enter our username'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (text) {
                print('First text field: $text');
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search term'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Second text field',
              ),
              controller: myController,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _scaffoldkey.currentState.showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

}

